//
//  UserProgression.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserProgression:NSObject, Codable{
    @objc public var progression:Int64 = Int64.min
    @objc public var progressionTotal:Int64 = Int64.min
    @objc public var progressionName:String?
    @objc public var progressionDescription:String?
    @objc public var progressionImageUrl:String?
    
    @objc public var progressionCategory:String?
    @objc public var prograssionColorCode:String?
    
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
