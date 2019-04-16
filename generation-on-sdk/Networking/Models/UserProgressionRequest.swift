//
//  UserProgressionRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserProgressionRequest:Codable {
    public var sessionKey:String?
    public var userProfile:UserProfile?
    public var additionalParams:[String:String]?
    
    public init(){}
}
