//
//  ConfigResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import UIKit

public struct ConfigResponse: Codable {
    public var partnerId:Int64?
    public var baseUrl:String?
    public var version:Int?
    public var partnerProps:[String:String]?
    public var additionalParams:[String:String]?
    
    public init(){}
}
