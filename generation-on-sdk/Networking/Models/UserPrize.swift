//
//  UserPrize.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserPrize:NSObject, Codable{
    @objc public var prize:Prize?
    @objc public var prizeEarnedDate:Int64 = Int64.min
    @objc public var prizeStatus:String?
    @objc public var prizeStatusDate:Int64 = Int64.min
    @objc public var prizeSource:String?
    @objc public var prizeExpirationDate:Int64 = Int64.min
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
