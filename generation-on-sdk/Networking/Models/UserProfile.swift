//
//  UserProfile.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserProfile:NSObject, Codable{
    public var profileId:Int64?
    public var email:String?
    public var userMsisdns:[UserMsisdn]?
    public var lang:String?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getProfileId() -> Int64{
        return profileId == nil ? 0 : profileId!
    }
    
    @objc public func setProfileId(_ value:Int64){
        self.profileId = value
    }
    
    @objc public func getEmail() -> String{
        return email == nil ? "" : email!
    }
    
    @objc public func setEmail(_ value:String){
        self.email = value
    }
    
    @objc public func getUserMsisdns() -> [UserMsisdn]{
        return userMsisdns == nil ? [] : userMsisdns!
    }
    
    @objc public func setUserMsisdns(_ value:[UserMsisdn]){
        self.userMsisdns = value
    }
    
    @objc public func getLang() -> String{
        return lang == nil ? "" : lang!
    }
    
    @objc public func setLang(_ value:String){
        self.lang = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
