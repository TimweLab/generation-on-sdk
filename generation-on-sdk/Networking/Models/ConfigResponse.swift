//
//  ConfigResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import UIKit

@objc public class ConfigResponse: NSObject, Codable {
    @objc public var partnerId:Int64 = Int64.min
    @objc public var baseUrl:String?
    @objc public var version:Int = Int.min
    @objc public var partnerProps:[String:String]?
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
