//
//  Prize.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct Prize:Codable{
    public var prizeCode:String?
    public var prizeName:String?
    public var prizeCategory:String?
    public var prizeDescription:String?
    public var prizeImageUrl:String?
    public var prizeTier:Int64?
    public var prizeTierName:String?
    public var totalUserTicketsForPrize:Int64?
    public var additionalParams:[String:String]?
    
    public init(){}
}
