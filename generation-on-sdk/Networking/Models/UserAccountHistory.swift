//
//  UserAccountHistory.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserAccountHistory:Codable{
    var userPrizes:[String:[UserPrize]]?
    var userAttempts:[String:[UserAttempt]]?
    var userPoints:[String:[UserPoint]]?
    var additionalParams:[String:[String]]?
    
    public init(){}
}
