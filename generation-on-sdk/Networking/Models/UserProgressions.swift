//
//  UserProgressions.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserProgressions: NSObject, Codable {
    public var progressions:[String:UserProgression]?
    
    override public init(){}
    
    @objc public func getProgressions() -> [String:UserProgression]{
        return progressions == nil ? [:] : progressions!
    }
    
    @objc public func setProgressions(_ value:[String:UserProgression]){
        self.progressions = value
    }
}
