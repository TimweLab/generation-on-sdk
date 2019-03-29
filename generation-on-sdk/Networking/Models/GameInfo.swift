//
//  GameInfo.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct GameInfo:Codable{
    var gameType:String?
    var gameName:String?
    var gameDescription:String?
    var gameImageUrl:String?
    var listOfPrizes:[Prize]?
    var pointsForEachAttempt:Int64?
    var loyaltyPointsForEachAttempt:Int64?
    var additionalParams:[String:String]?
    
    public init(){}
}
