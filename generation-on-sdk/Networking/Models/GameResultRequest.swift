//
//  GameResultRequest.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameResultRequest:NSObject, Codable{
    public var sessionKey:String?
    public var userProfile:UserProfile?
    public var tierId:Int64?
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
    
    @objc public func geTtierId() -> Int64{
        return tierId == nil ? 0 : tierId!
    }
    
    @objc public func seTtierId(_ value:Int64){
        self.tierId = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
