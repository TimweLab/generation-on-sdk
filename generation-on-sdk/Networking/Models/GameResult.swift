//
//  GameResult.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameResult:NSObject, Codable{
    @objc public var userPrize:UserPrize?
    @objc public var gameResult:Int64 = Int64.min
    @objc public var messageToUser:String?
    @objc public var messageToUserImgUrl:String?
    @objc public var actionToPerform:String?
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
