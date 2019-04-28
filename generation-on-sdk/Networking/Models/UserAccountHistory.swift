//
//  UserAccountHistory.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserAccountHistory:NSObject, Codable{
    public var userPrizes:[String:[UserPrize]]?
    public var userAttempts:[String:[UserAttempt]]?
    public var userPoints:[String:[UserPoint]]?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getUserPrizes() -> [String:[UserPrize]]{
        return userPrizes == nil ? [:] : userPrizes!
    }
    
    @objc public func setUserPrizes(_ value:[String:[UserPrize]]){
        self.userPrizes = value
    }
    
    @objc public func getUserAttempts() -> [String:[UserAttempt]]{
        return userAttempts == nil ? [:] : userAttempts!
    }
    
    @objc public func setUserAttempts(_ value:[String:[UserAttempt]]){
        self.userAttempts = value
    }
    
    @objc public func getUserPoints() -> [String:[UserPoint]]{
        return userPoints == nil ? [:] : userPoints!
    }
    
    @objc public func setUserPoints(_ value:[String:[UserPoint]]){
        self.userPoints = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
