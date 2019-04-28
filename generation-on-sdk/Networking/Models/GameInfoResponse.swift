//
//  GameInfoResponse.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameInfoResponse:NSObject, Codable{
    public var userTier:Int64?
    public var userTierName:String?
    public var userAttempts:[String:Int64]?
    public var userPoints:Int64?
    public var userLoyaltyPoints:Int64?
    public var gamesInfo:[GameInfo]?
    public var additionalParams:[String:String]?
    
    public override init(){}
    
    @objc public func getUserTier() -> Int64{
        return userTier == nil ? 0 : userTier!
    }
    
    @objc public func setUserTier(_ value:Int64){
        self.userTier = value
    }
    
    @objc public func getUserTierName() -> String{
        return userTierName == nil ? "" : userTierName!
    }
    
    @objc public func setUserTierName(_ value:String){
        self.userTierName = value
    }
    
    @objc public func getUserAttempts() -> [String:Int64]{
        return userAttempts == nil ? [:] : userAttempts!
    }
    
    @objc public func setUserAttempts(_ value:[String:Int64]){
        self.userAttempts = value
    }
    
    @objc public func getUserPoints() -> Int64{
        return userPoints == nil ? 0 : userPoints!
    }
    
    @objc public func setUserPoints(_ value:Int64){
        self.userPoints = value
    }
    
    @objc public func getUserLoyaltyPoints() -> Int64{
        return userLoyaltyPoints == nil ? 0 : userLoyaltyPoints!
    }
    
    @objc public func setUserLoyaltyPoints(_ value:Int64){
        self.userLoyaltyPoints = value
    }
    
    @objc public func getGamesInfo() -> [GameInfo]{
        return gamesInfo == nil ? [] : gamesInfo!
    }
    
    @objc public func setGamesInfo(_ value:[GameInfo]){
        self.gamesInfo = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
