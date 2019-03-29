//
//  Prize.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct Prize:Codable{
    var prizeCode:String?
    var prizeName:String?
    var prizeCategory:String?
    var prizeDescription:String?
    var prizeImageUrl:String?
    var prizeTier:Int64?
    var prizeTierName:String?
    var totalUserTicketsForPrize:Int64?
    var additionalParams:[String:String]?
    
    public init(){}
}
