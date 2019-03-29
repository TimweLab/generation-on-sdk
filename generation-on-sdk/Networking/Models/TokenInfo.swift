//
//  TokenInfo.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct TokenInfo:Codable{
    var sessionKey:String?
    var userProfile:UserProfile?
    var token:String?
    var deviceUUID:String?
    var appUUID:String?
    var additionalParams:[String:String]?
    
    public init(){}
}
