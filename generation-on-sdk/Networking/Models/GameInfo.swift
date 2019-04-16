//
//  GameInfo.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct GameInfo:Codable{
    public var gameType:String?
    public var gameName:String?
    public var gameDescription:String?
    public var gameImageUrl:String?
    public var listOfPrizes:[Prize]?
    public var pointsForEachAttempt:Int64?
    public var loyaltyPointsForEachAttempt:Int64?
    public var additionalParams:[String:String]?
    
    public init(){}
}
