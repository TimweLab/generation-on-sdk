//
//  GameInfoResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct GameInfoResponse:Codable{
    var userTier:Int64?
    var userTierName:String?
    var userAttempts:[String:Int64]?
    var userPoints:Int64?
    var userLoyaltyPoints:Int64?
    var gamesInfo:[GameInfo]?
    var additionalParams:[String:String]?
    
    public init(){}
}
