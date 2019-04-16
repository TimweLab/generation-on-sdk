//
//  GameResult.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct GameResult:Codable{
    public var userPrize:UserPrize?
    public var gameResult:Int64?
    public var messageToUser:String?
    public var messageToUserImgUrl:String?
    public var actionToPerform:String?
    public var additionalParams:[String:String]?
    
    public init(){}
}
