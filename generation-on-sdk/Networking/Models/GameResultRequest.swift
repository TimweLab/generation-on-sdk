//
//  GameResultRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct GameResultRequest:Codable{
    public var sessionKey:String?
    public var userProfile:UserProfile?
    public var tierId:Int64?
    public var additionalParams:[String:String]?
    
    public init(){}
}
