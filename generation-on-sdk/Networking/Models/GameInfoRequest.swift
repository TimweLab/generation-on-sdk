//
//  GameInfoRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GameInfoRequest:NSObject, Codable{
    @objc public var sessionKey:String?
    @objc public var userProfile:UserProfile?
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
