//
//  UserProgression.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserProgression:Codable{
    var progression:Int64?
    var progressionTotal:Int64?
    var progressionName:String?
    var progressionDescription:String?
    var progressionImageUrl:String?
    
    var progressionCategory:String?
    var prograssionColorCode:String?
    
    var additionalParams:[String:String]?
    
    public init(){}
}
