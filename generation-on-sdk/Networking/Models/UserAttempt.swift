//
//  UserAttempt.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserAttempt:Codable{
    var attempts:Int64?
    var attemptsEarnedDate:Int64?
    var attemptsStatus:String?
    var attemptsStatusDate:Int64?
    var attemptsSource:String?
    var attemptsDescription:String?
    var attemptsExpirationDate:Int64?
    var additionalParams:[String:String]?
    
    public init(){}
}
