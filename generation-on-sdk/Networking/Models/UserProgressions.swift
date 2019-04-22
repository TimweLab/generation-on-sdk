//
//  UserProgressions.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserProgressions: NSObject, Codable {
    @objc public var progressions:[String:UserProgression]?
    
    override public init(){}
}
