//
//  UserMsisdn.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserMsisdn:Codable{
    var msisdn:String?
    var type:String?
    var balance:Double?
    var isPrimaryNumber:Bool?
    var additionalParams:[String:String]?
    
    public init(){}
}
