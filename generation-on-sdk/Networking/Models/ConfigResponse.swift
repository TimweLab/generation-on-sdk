//
//  ConfigResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 14/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import UIKit

public struct ConfigResponse: Codable {
    var partnerId:Int64?
    var baseUrl:String?
    var version:Int?
    var partnerProps:[String:String]?
    var additionalParams:[String:String]?
    
    public init(){}
}
