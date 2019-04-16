//
//  UserProgression.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserProgression:Codable{
    public var progression:Int64?
    public var progressionTotal:Int64?
    public var progressionName:String?
    public var progressionDescription:String?
    public var progressionImageUrl:String?
    
    public var progressionCategory:String?
    public var prograssionColorCode:String?
    
    public var additionalParams:[String:String]?
    
    public init(){}
}
