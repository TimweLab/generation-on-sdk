//
//  Prize.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class Prize:NSObject, Codable{
    @objc public var prizeCode:String?
    @objc public var prizeName:String?
    @objc public var prizeCategory:String?
    @objc public var prizeDescription:String?
    @objc public var prizeImageUrl:String?
    @objc public var prizeTier:Int64 = -1
    @objc public var prizeTierName:String?
    @objc public var totalUserTicketsForPrize:Int64 = -1
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
