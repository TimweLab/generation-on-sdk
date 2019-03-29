//
//  UserPrize.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserPrize:Codable{
    var prize:Prize?
    var prizeEarnedDate:Int64?
    var prizeStatus:String?
    var prizeStatusDate:Int64?
    var prizeSource:String?
    var prizeExpirationDate:Int64?
    var additionalParams:[String:String]?
    
    public init(){}
}
