//
//  UserProfile.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserProfile:NSObject, Codable{
    @objc public var profileId:Int64 = Int64.min
    @objc public var email:String?
    @objc public var userMsisdns:[UserMsisdn]?
    @objc public var lang:String?
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
