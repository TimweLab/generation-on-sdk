//
//  UserMsisdn.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserMsisdn:Codable{
    public var msisdn:String?
    public var type:String?
    public var balance:Double?
    public var isPrimaryNumber:Bool?
    public var additionalParams:[String:String]?
    
    public init(){}
}
