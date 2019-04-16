//
//  UserAttempt.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserAttempt:Codable{
    public var attempts:Int64?
    public var attemptsEarnedDate:Int64?
    public var attemptsStatus:String?
    public var attemptsStatusDate:Int64?
    public var attemptsSource:String?
    public var attemptsDescription:String?
    public var attemptsExpirationDate:Int64?
    public var additionalParams:[String:String]?
    
    public init(){}
}
