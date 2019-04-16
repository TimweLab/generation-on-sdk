//
//  UserPrize.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserPrize:Codable{
    public var prize:Prize?
    public var prizeEarnedDate:Int64?
    public var prizeStatus:String?
    public var prizeStatusDate:Int64?
    public var prizeSource:String?
    public var prizeExpirationDate:Int64?
    public var additionalParams:[String:String]?
    
    public init(){}
}
