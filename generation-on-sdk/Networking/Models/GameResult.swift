//
//  GameResult.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameResult:NSObject, Codable{
    public var userPrize:UserPrize?
    public var gameResult:Int64?
    public var messageToUser:String?
    public var messageToUserImgUrl:String?
    public var actionToPerform:String?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getUserPrize() -> UserPrize{
        return userPrize == nil ? UserPrize() : userPrize!
    }
    
    @objc public func setUserPrize(_ value:UserPrize){
        self.userPrize = value
    }
    
    @objc public func getGameResult() -> Int64{
        return gameResult == nil ? 0 : gameResult!
    }
    
    @objc public func setGameResult(_ value:Int64){
        self.gameResult = value
    }
    
    @objc public func getMessageToUser() -> String{
        return messageToUser == nil ? "" : messageToUser!
    }
    
    @objc public func setMessageToUser(_ value:String){
        self.messageToUser = value
    }
    
    @objc public func getMessageToUserImgUrl() -> String{
        return messageToUserImgUrl == nil ? "" : messageToUserImgUrl!
    }
    
    @objc public func setMessageToUserImgUrl(_ value:String){
        self.messageToUserImgUrl = value
    }
    
    @objc public func getActionToPerform() -> String{
        return actionToPerform == nil ? "" : actionToPerform!
    }
    
    @objc public func setActionToPerform(_ value:String){
        self.actionToPerform = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
