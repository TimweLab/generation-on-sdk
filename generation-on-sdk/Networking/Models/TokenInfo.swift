//
//  TokenInfo.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class TokenInfo:NSObject, Codable{
    public var sessionKey:String?
    public var userProfile:UserProfile?
    public var token:String?
    public var deviceUUID:String?
    public var appUUID:String?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getSessionKey() -> String{
        return sessionKey == nil ? "" : sessionKey!
    }
    
    @objc public func setSessionKey(_ value:String){
        self.sessionKey = value
    }
    
    @objc public func getUserProfile() -> UserProfile{
        return userProfile == nil ? UserProfile() : userProfile!
    }
    
    @objc public func setUserProfile(_ value:UserProfile){
        self.userProfile = value
    }
    
    @objc public func getToken() -> String{
        return token == nil ? "" : token!
    }
    
    @objc public func setToken(_ value:String){
        self.token = value
    }
    
    @objc public func getDeviceUUID() -> String{
        return deviceUUID == nil ? "" : deviceUUID!
    }
    
    @objc public func setDeviceUUID(_ value:String){
        self.deviceUUID = value
    }
    
    @objc public func getAppUUID() -> String{
        return appUUID == nil ? "" : appUUID!
    }
    
    @objc public func setAppUUID(_ value:String){
        self.appUUID = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
