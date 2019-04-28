//
//  GameInfo.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameInfo:NSObject, Codable{
    public var gameType:String?
    public var gameName:String?
    public var gameDescription:String?
    public var gameImageUrl:String?
    public var listOfPrizes:[Prize]?
    public var pointsForEachAttempt:Int64?
    public var loyaltyPointsForEachAttempt:Int64?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getGameType() -> String{
        return gameType == nil ? "" : gameType!
    }
    
    @objc public func setGameType(_ value:String){
        self.gameType = value
    }
    
    @objc public func getGameName() -> String{
        return gameName == nil ? "" : gameName!
    }
    
    @objc public func setGameName(_ value:String){
        self.gameName = value
    }
    
    @objc public func getGameDescription() -> String{
        return gameDescription == nil ? "" : gameDescription!
    }
    
    @objc public func setGameDescription(_ value:String){
        self.gameDescription = value
    }
    
    @objc public func getGameImageUrl() -> String{
        return gameImageUrl == nil ? "" : gameImageUrl!
    }
    
    @objc public func setGameImageUrl(_ value:String){
        self.gameImageUrl = value
    }
    
    @objc public func getListOfPrizes() -> [Prize]{
        return listOfPrizes == nil ? [] : listOfPrizes!
    }
    
    @objc public func setListOfPrizes(_ value:[Prize]){
        self.listOfPrizes = value
    }
    
    @objc public func getPointsForEachAttempt() -> Int64{
        return pointsForEachAttempt == nil ? 0 : pointsForEachAttempt!
    }
    
    @objc public func setPointsForEachAttempt(_ value:Int64){
        self.pointsForEachAttempt = value
    }
    
    @objc public func getLoyaltyPointsForEachAttempt() -> Int64{
        return loyaltyPointsForEachAttempt == nil ? 0 : loyaltyPointsForEachAttempt!
    }
    
    @objc public func setLoyaltyPointsForEachAttempt(_ value:Int64){
        self.loyaltyPointsForEachAttempt = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
