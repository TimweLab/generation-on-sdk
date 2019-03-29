//
//  GameResultRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct GameResultRequest:Codable{
    var sessionKey:String?
    var userProfile:UserProfile?
    var tierId:Int64?
    var additionalParams:[String:String]?
    
    public init(){}
}
