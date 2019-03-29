//
//  UserProfile.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserProfile:Codable{
    var profileId:Int64?
    var email:String?
    var userMsisdns:[UserMsisdn]?
    var lang:String?
    var additionalParams:[String:String]?
    
    public init(){}
}
