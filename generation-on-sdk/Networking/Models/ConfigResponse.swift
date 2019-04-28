//
//  ConfigResponse.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import UIKit

@objc public class ConfigResponse: NSObject, Codable {
    public var partnerId:Int64?
    public var baseUrl:String?
    public var version:Int?
    public var partnerProps:[String:String]?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getPartnerId() -> Int64{
        return partnerId == nil ? 0 : partnerId!
    }
    
    @objc public func setPartnerId(_ value:Int64){
        self.partnerId = value
    }
    
    @objc public func getBaseUrl() -> String{
        return baseUrl == nil ? "" : baseUrl!
    }
    
    @objc public func setBaseUrl(_ value:String){
        self.baseUrl = value
    }
    
    @objc public func getVersion() -> Int{
        return version == nil ? 0 : version!
    }
    
    @objc public func setVersion(_ value:Int){
        self.version = value
    }
    
    @objc public func getPartnerProps() -> [String:String]{
        return partnerProps == nil ? [:] : partnerProps!
    }
    
    @objc public func setPartnerProps(_ value:[String:String]){
        self.partnerProps = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
