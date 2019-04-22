//
//  EventRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class EventRequest:NSObject, Codable{
    @objc public var sessionKey:String?
    @objc public var userProfile:UserProfile?
    @objc public var eventType:String?
    @objc public var eventValue:String?
    @objc public var eventDate:String?
    @objc public var eventChannel:String?
    @objc public var transactionId:String?
    @objc public var productId:String?
    @objc public var productName:String?
    @objc public var appSection:String?
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}

