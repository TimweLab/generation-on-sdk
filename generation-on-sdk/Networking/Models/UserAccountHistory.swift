//
//  UserAccountHistory.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserAccountHistory:NSObject, Codable{
    @objc public var userPrizes:[String:[UserPrize]]?
    @objc public var userAttempts:[String:[UserAttempt]]?
    @objc public var userPoints:[String:[UserPoint]]?
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
