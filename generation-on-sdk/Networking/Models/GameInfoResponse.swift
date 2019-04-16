//
//  GameInfoResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct GameInfoResponse:Codable{
    public var userTier:Int64?
    public var userTierName:String?
    public var userAttempts:[String:Int64]?
    public var userPoints:Int64?
    public var userLoyaltyPoints:Int64?
    public var gamesInfo:[GameInfo]?
    public var additionalParams:[String:String]?
    
    public init(){}
}
