//
//  GenerationOnAPI.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GenerationOnAPI: NSObject{
    
    private static var instance:GenerationOnAPI?
    
    private var apiKey:String = ""
    private var partnerKey:String = ""
    private var configResponse:ConfigResponse?
    private var isServiceConfigurated = false
    
    override public init() {}
    
    private init(_ apiKey:String) throws{
        super.init()
        
        isServiceConfigurated = false
        
        self.apiKey = apiKey
        try setup()
    }
    
    @objc public static func getInstance(_ apiKey:String) throws -> GenerationOnAPI{
        if instance == nil{
            instance = try GenerationOnAPI(apiKey)
        }
        
        return instance!
    }
    
    @objc public func isConfigurationAvaliable() -> Bool{
        return isServiceConfigurated
    }
    
    private func setup() throws {
        let locale = Locale.current.languageCode

        RequestManager.instance.buildConfigService(apiKey:apiKey, locale:locale ?? "")
        
        let configCall = try GenerationOnService.getConfigs()
        
        configResponse = configCall
        partnerKey = String(configCall.partnerId)
        
        let baseUrl = (configResponse == nil) ?  "https://" : (configResponse!.baseUrl ?? "")
        
        RequestManager.instance.buildService(baseUrl:baseUrl, apiKey:apiKey, locale:locale ?? "")
        
        isServiceConfigurated = true
        
        if Helper.IsDebug(){
            print("CONFIGS: \(String(describing: configCall))")
        }
    }
    
    @objc public func getGameInfo(_ request:GameInfoRequest) throws -> GameInfoResponse{
        return try GenerationOnService.postGameInfo(partnerKey:partnerKey, request:request)
    }
    
    @objc public func getUserAccountHistory(_ request:UserAccountHistoryRequest) throws -> UserAccountHistory{
        return try GenerationOnService.postUserHistory(partnerKey:partnerKey, request:request)
    }
    
    @objc public func getUserProgression(_ request:UserProgressionRequest) throws -> UserProgressions{
        return try GenerationOnService.postUserProgression(partnerKey:partnerKey, request:request)
    }
    
    @objc public func exchangePointsToAttempts(_ request:ExchangePointsToAttemptRequest) throws -> ExchangePointsToAttemptResponse{
        return try GenerationOnService.postExchangePointsToAttempts(partnerKey:partnerKey, request:request)
    }
    
    @objc public func getGameResult(_ request:GameResultRequest) throws -> GameResult{
        return try GenerationOnService.postGameResult(partnerKey:partnerKey, request:request)
    }
    
    @objc public func event(_ request:EventRequest) throws -> EventResponse{
        return try GenerationOnService.postEvent(partnerKey:partnerKey, request:request)
    }
    
    @objc public func insertOrUpdatePushNotificationToken(_ request:TokenInfo) throws {
        try GenerationOnService.postPushsNotifications(partnerKey:partnerKey, request:request)
    }
}
