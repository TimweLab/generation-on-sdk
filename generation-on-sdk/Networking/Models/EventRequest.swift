//
//  EventRequest.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct EventRequest:Codable{
    var sessionKey:String?
    var userProfile:UserProfile?
    var eventType:String?
    var eventValue:String?
    var eventDate:String?
    var eventChannel:String?
    var transactionId:String?
    var productId:String?
    var productName:String?
    var appSection:String?
    var additionalParams:[String:String]?
    
    public init(){}
}

