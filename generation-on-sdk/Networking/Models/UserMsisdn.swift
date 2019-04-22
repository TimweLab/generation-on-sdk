//
//  UserMsisdn.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserMsisdn:NSObject, Codable{
    @objc public var msisdn:String?
    @objc public var type:String?
    @objc public var balance:Double = Double(Int.min)
    @objc public var isPrimaryNumber:Bool = false
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
