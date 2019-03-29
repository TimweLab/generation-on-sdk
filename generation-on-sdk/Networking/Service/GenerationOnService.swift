//
//  GenerationOnService.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

internal class GenerationOnService{
    
    static func getConfigs() -> ConfigResponse?{
        return RequestManager.instance.MakeRequest(as: .get, endpoint: "configs")
    }
    
    static func postGameInfo(partnerKey:String, request:GameInfoRequest) -> GameInfoResponse?{
        return RequestManager.instance.MakeRequest(as: .post, endpoint: "game/info/" + String(partnerKey), with:request)
    }
    
    static func postUserHistory(partnerKey:String, request:UserAccountHistoryRequest) -> UserAccountHistory?{
        return RequestManager.instance.MakeRequest(as: .post, endpoint: "game/user-history/" + String(partnerKey), with:request)
    }
    
    static func postUserProgression(partnerKey:String, request:UserProgressionRequest) -> UserProgressions?{
        return RequestManager.instance.MakeRequest(as: .post, endpoint: "game/user-progression/" + String(partnerKey), with:request)
    }
    
    static func postExchangePointsToAttempts(partnerKey:String, request:ExchangePointsToAttemptRequest) -> ExchangePointsToAttemptResponse?{
        return RequestManager.instance.MakeRequest(as: .post, endpoint: "game/exchange-points/" + String(partnerKey), with:request)
    }
    
    static func postGameResult(partnerKey:String, request:GameResultRequest) -> GameResult?{
        return RequestManager.instance.MakeRequest(as: .post, endpoint: "game/result/" + String(partnerKey), with:request)
    }
    
    static func postEvent(partnerKey:String, request:EventRequest) -> EventResponse?{
        return RequestManager.instance.MakeRequest(as: .post, endpoint: "event/" + String(partnerKey), with:request)
    }

    static func postPushsNotifications(partnerKey:String, request:TokenInfo){
        let _:NoReply? = RequestManager.instance.MakeRequest(as: .post, endpoint: "pushs/" + String(partnerKey), with:request)
    }
}
