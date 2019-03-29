//
//  GenerationOnAPI.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public class GenerationOnAPI{
    
    private static let BASE_URL = "https://geon.timwe.com/"
    
    private static var instance:GenerationOnAPI?
    
    private var apiKey:String = ""
    private var partnerKey:String = ""
    private var configResponse:ConfigResponse?
    private var isServiceConfigurated = false
    
    public init() {}
    
    private init(_ apiKey:String){
        isServiceConfigurated = false
        
        self.apiKey = apiKey
        setup()
    }
    
    public static func getInstance(_ apiKey:String) -> GenerationOnAPI{
        if instance == nil{
            instance = GenerationOnAPI(apiKey)
        }
        
        return instance!
    }
    
    public func isConfigurationAvaliable() -> Bool{
        return isServiceConfigurated
    }
    
    private func setup() {
        let locale = Locale.current.languageCode

        RequestManager.instance.buildConfigService(apiKey:apiKey, locale:locale ?? "")
        
        let configCall = GenerationOnService.getConfigs()
        
        configResponse = configCall
        partnerKey = String(configCall?.partnerId ?? 0)
        
        let baseUrl = (configResponse == nil) ?  "https://" : (configResponse!.baseUrl ?? "")
        
        RequestManager.instance.buildService(baseUrl:baseUrl, apiKey:apiKey, locale:locale ?? "")
        
        isServiceConfigurated = true
        
        if Helper.IsDebug(){
            print("CONFIGS: \(String(describing: configCall))")
        }
    }
    
    public func getGameInfo(_ request:GameInfoRequest) -> GameInfoResponse?{
        return GenerationOnService.postGameInfo(partnerKey:partnerKey, request:request)
    }
    
    public func getUserAccountHistory(_ request:UserAccountHistoryRequest) -> UserAccountHistory?{
        return GenerationOnService.postUserHistory(partnerKey:partnerKey, request:request)
    }
    
    public func getUserProgression(_ request:UserProgressionRequest) -> UserProgressions?{
        return GenerationOnService.postUserProgression(partnerKey:partnerKey, request:request)
    }
    
    public func exchangePointsToAttempts(_ request:ExchangePointsToAttemptRequest) -> ExchangePointsToAttemptResponse?{
        return GenerationOnService.postExchangePointsToAttempts(partnerKey:partnerKey, request:request)
    }
    
    public func getGameResult(_ request:GameResultRequest) -> GameResult?{
        return GenerationOnService.postGameResult(partnerKey:partnerKey, request:request)
    }
    
    public func event(_ request:EventRequest) -> EventResponse?{
        return GenerationOnService.postEvent(partnerKey:partnerKey, request:request)
    }
    
    public func insertOrUpdatePushNotificationToken(_ request:TokenInfo){
        GenerationOnService.postPushsNotifications(partnerKey:partnerKey, request:request)
    }
}
