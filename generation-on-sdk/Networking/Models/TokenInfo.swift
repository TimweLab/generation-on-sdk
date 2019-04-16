//
//  TokenInfo.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct TokenInfo:Codable{
    public var sessionKey:String?
    public var userProfile:UserProfile?
    public var token:String?
    public var deviceUUID:String?
    public var appUUID:String?
    public var additionalParams:[String:String]?
    
    public init(){}
}
