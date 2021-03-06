//
//  RequestManager.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation
import Alamofire
import Alamofire_Synchronous

internal class RequestManager{
    private enum SuccessResponseCodes:Int{
        case SUCCESS_CODE = 200
        case NO_RESPONSE = 204
    }
    
    private static let CONFIG_BASE_URL = "https://geon.timwe.com/"
    private static let APPLICATION_PATH = "generation-on-rest-api/v1/"
    
    static var instance:RequestManager = RequestManager()
    
    private var base_url:String?
    private var headers:HTTPHeaders?
    
    func buildConfigService(apiKey:String, locale:String){
        return self.buildService(baseUrl:RequestManager.CONFIG_BASE_URL, apiKey:apiKey, locale:locale)
    }
    
    func buildService(baseUrl:String, apiKey:String, locale:String){
        var slash = ""
        if !baseUrl.hasSuffix("/") { // true
            slash = "/"
        }
        
        base_url = baseUrl + slash + RequestManager.APPLICATION_PATH
        headers = [
            "apiKey": apiKey,
            "locale": locale
        ] as HTTPHeaders
    }
    
    func MakeRequest<T: Decodable>(as method:HTTPMethod, endpoint url:String) throws -> T{
        return try self.createRequest(as: method, to: url, body: nil)
    }
    
    func MakeRequest<T: Decodable>(as method:HTTPMethod, endpoint url:String, with body:Codable?) throws -> T{
        return try self.createRequest(as: method, to: url, body: body?.asDictionary)
    }
    
    func MakeRequest<T: Decodable>(as method:HTTPMethod, endpoint url:String, with body:[String:Any]?) throws -> T{
        return try self.createRequest(as: method, to: url, body: body)
    }
    
    private func createRequest<T: Decodable>(as method:HTTPMethod, to url:String, body:[String:Any]?) throws -> T{
        let api_url = (base_url ?? "") + url
        
//        if Helper.IsDebug(){
            print("\(Helper.TAG): Sending request to \(api_url)")
//        }
        
        let response = Alamofire.request(api_url.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)!,
                                         method:method, parameters:body, encoding: JSONEncoding.default, headers:headers)
            .responseJSON()
        
        return try self.parseNetworkResponse(response: response)
    }
    
    private func parseNetworkResponse<T: Decodable>(response:DataResponse<Any>) throws -> T{
//        if Helper.IsDebug(){
            print("\(Helper.TAG): Ended request \(String(describing: response.request?.url))")
            print("\(Helper.TAG): response: \(String(describing: response.result.value))")
//        }
        
        switch response.result {
        case .success(_):
            if (response.response?.statusCode != RequestManager.SuccessResponseCodes.SUCCESS_CODE.rawValue) && (response.response?.statusCode != RequestManager.SuccessResponseCodes.NO_RESPONSE.rawValue){
                let errorToThrow = GenerationOnRuntimeException()
                
                do{
                    let responseData = try JSONSerialization.data(withJSONObject: response.result.value!, options: [])
                    
                    let json = try JSONDecoder().decode(ErrorBody.self, from: responseData)
                    
                    errorToThrow.errorStatus = json.statusCode ?? -1
                    errorToThrow.rootException = "\(Helper.TAG): \(String(describing: json.message)) (Error from server)"
                }catch let e{
                    print(e.localizedDescription)
                    
                    errorToThrow.errorStatus = -1
                    errorToThrow.rootException = "\(Helper.TAG): Could not parse exception response (Exception parsing error from server)"
                }
                
                throw errorToThrow
            }
            
            if (response.response?.statusCode == RequestManager.SuccessResponseCodes.SUCCESS_CODE.rawValue && response.result.value == nil) ||
                (response.response?.statusCode == RequestManager.SuccessResponseCodes.NO_RESPONSE.rawValue){
                
                return NoReply() as! T
            }else{
                do{
                    let responseData = try JSONSerialization.data(withJSONObject: response.result.value!, options: [])
                    
                    let json = try JSONDecoder().decode(T.self, from: responseData)
                    
                    return json
                }catch let e{
                    print(e.localizedDescription)
                    
                    let error = GenerationOnRuntimeException()
                    
                    error.errorStatus = response.response?.statusCode ?? 500
                    error.rootException = "\(Helper.TAG): Could not parse the response (Error parsing response from server)"
                    
                    throw error
                }
            }
        case .failure(let e):
            let error = GenerationOnRuntimeException()
            
            error.errorStatus = response.response?.statusCode ?? 500
            error.rootException = "\(Helper.TAG): \(e.localizedDescription) (Request failure)"
            
            throw error
        }
    }
}

extension Encodable {
    var asDictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
