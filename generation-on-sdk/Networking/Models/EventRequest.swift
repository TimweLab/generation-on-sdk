//
//  EventRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct EventRequest:Codable{
    public var sessionKey:String?
    public var userProfile:UserProfile?
    public var eventType:String?
    public var eventValue:String?
    public var eventDate:String?
    public var eventChannel:String?
    public var transactionId:String?
    public var productId:String?
    public var productName:String?
    public var appSection:String?
    public var additionalParams:[String:String]?
    
    public init(){}
}

