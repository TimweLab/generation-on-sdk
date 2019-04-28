//
//  GenerationOnService.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

internal class GenerationOnService{
    
    static func getConfigs() throws -> ConfigResponse{
        return try RequestManager.instance.MakeRequest(as: .get, endpoint: "configs")
    }
    
    static func postGameInfo(partnerKey:String, request:GameInfoRequest) throws -> GameInfoResponse{
        return try RequestManager.instance.MakeRequest(as: .post, endpoint: "game/info/" + String(partnerKey), with:request)
    }
    
    static func postUserHistory(partnerKey:String, request:UserAccountHistoryRequest) throws -> UserAccountHistory{
        return try RequestManager.instance.MakeRequest(as: .post, endpoint: "game/user-history/" + String(partnerKey), with:request)
    }
    
    static func postUserProgression(partnerKey:String, request:UserProgressionRequest) throws -> UserProgressions{
        return try RequestManager.instance.MakeRequest(as: .post, endpoint: "game/user-progression/" + String(partnerKey), with:request)
    }
    
    static func postExchangePointsToAttempts(partnerKey:String, request:ExchangePointsToAttemptRequest) throws -> ExchangePointsToAttemptResponse{
        return try RequestManager.instance.MakeRequest(as: .post, endpoint: "game/exchange-points/" + String(partnerKey), with:request)
    }
    
    static func postGameResult(partnerKey:String, request:GameResultRequest) throws -> GameResult{
        return try RequestManager.instance.MakeRequest(as: .post, endpoint: "game/result/" + String(partnerKey), with:request)
    }
    
    static func postEvent(partnerKey:String, request:EventRequest) throws -> EventResponse{
        return try RequestManager.instance.MakeRequest(as: .post, endpoint: "event/" + String(partnerKey), with:request)
    }

    static func postPushsNotifications(partnerKey:String, request:TokenInfo) throws {
        do{
            let _:NoReply? = try RequestManager.instance.MakeRequest(as: .post, endpoint: "pushs/" + String(partnerKey), with:request)
        }catch let error{
            throw error
        }
    }
}
