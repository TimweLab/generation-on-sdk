//
//  RequestManager.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 14/03/2019.
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
    
    func MakeRequest<T: Decodable>(as method:HTTPMethod, endpoint url:String) -> T?{
        return self.createRequest(as: method, to: url, body: nil)
    }
    
    func MakeRequest<T: Decodable>(as method:HTTPMethod, endpoint url:String, with body:Codable?) -> T?{
        return self.createRequest(as: method, to: url, body: body?.asDictionary)
    }
    
    func MakeRequest<T: Decodable>(as method:HTTPMethod, endpoint url:String, with body:[String:Any]?) -> T?{
        return self.createRequest(as: method, to: url, body: body)
    }
    
    private func createRequest<T: Decodable>(as method:HTTPMethod, to url:String, body:[String:Any]?) -> T?{
        let api_url = (base_url ?? "") + url
        
        if Helper.IsDebug(){
            print("REQUEST: Sending request to \(api_url)")
        }
        
        let response = Alamofire.request(api_url.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)!,
                                         method:method, parameters:body, encoding: JSONEncoding.default, headers:headers)
            .responseJSON()
        
        return self.parseNetworkResponse(response: response)
    }
    
    private func parseNetworkResponse<T: Decodable>(response:DataResponse<Any>) -> T?{
        if Helper.IsDebug(){
            print("REQUEST: Ended request \(String(describing: response.request?.url))")
            print("REQUEST: response: \(String(describing: response.result.value))")
        }
        
        switch response.result {
        case .success(_):
            if (response.response?.statusCode == RequestManager.SuccessResponseCodes.SUCCESS_CODE.rawValue && response.result.value == nil) ||
                (response.response?.statusCode == RequestManager.SuccessResponseCodes.NO_RESPONSE.rawValue){
                
                return NoReply() as? T
            }else{
                do{
                    let responseData = try JSONSerialization.data(withJSONObject: response.result.value!, options: [])
                    
                    let json = try? JSONDecoder().decode(T.self, from: responseData)
                    
                    return json!
                }catch{
                    return nil
                }
            }
        case .failure(_):
            return nil
        }
    }
}

extension Encodable {
    var asDictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
