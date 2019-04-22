//
//  GameInfoResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameInfoResponse:NSObject, Codable{
    @objc public var userTier:Int64 = Int64.min
    @objc public var userTierName:String?
    @objc public var userAttempts:[String:Int64]?
    @objc public var userPoints:Int64 = Int64.min
    @objc public var userLoyaltyPoints:Int64 = Int64.min
    @objc public var gamesInfo:[GameInfo]?
    @objc public var additionalParams:[String:String]?
    
    public override init(){}
}
