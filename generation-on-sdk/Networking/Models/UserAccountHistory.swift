//
//  UserAccountHistory.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserAccountHistory:Codable{
    public var userPrizes:[String:[UserPrize]]?
    public var userAttempts:[String:[UserAttempt]]?
    public var userPoints:[String:[UserPoint]]?
    public var additionalParams:[String:String]?
    
    public init(){}
}
