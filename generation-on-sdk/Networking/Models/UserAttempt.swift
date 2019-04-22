//
//  UserAttempt.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserAttempt:NSObject, Codable{
    @objc public var attempts:Int64 = Int64.min
    @objc public var attemptsEarnedDate:Int64 = Int64.min
    @objc public var attemptsStatus:String?
    @objc public var attemptsStatusDate:Int64 = Int64.min
    @objc public var attemptsSource:String?
    @objc public var attemptsDescription:String?
    @objc public var attemptsExpirationDate:Int64 = Int64.min
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
