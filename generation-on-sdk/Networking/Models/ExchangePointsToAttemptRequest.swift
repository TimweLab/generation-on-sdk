//
//  ExchangePointsToAttemptRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class ExchangePointsToAttemptRequest:NSObject, Codable{
    @objc public var sessionKey:String?
    @objc public var userProfile:UserProfile?
    @objc public var attemptsWanted:Int64 = Int64.min
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
