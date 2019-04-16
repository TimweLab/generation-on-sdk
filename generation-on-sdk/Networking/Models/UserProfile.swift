//
//  UserProfile.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserProfile:Codable{
    public var profileId:Int64?
    public var email:String?
    public var userMsisdns:[UserMsisdn]?
    public var lang:String?
    public var additionalParams:[String:String]?
    
    public init(){}
}
