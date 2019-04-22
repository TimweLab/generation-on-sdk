//
//  GameInfo.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameInfo:NSObject, Codable{
    @objc public var gameType:String?
    @objc public var gameName:String?
    @objc public var gameDescription:String?
    @objc public var gameImageUrl:String?
    @objc public var listOfPrizes:[Prize]?
    @objc public var pointsForEachAttempt:Int64 = Int64.min
    @objc public var loyaltyPointsForEachAttempt:Int64 = Int64.min
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
