//
//  EventResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class EventResponse:NSObject, Codable{
    @objc public var success:Bool = false
    @objc public var message:String?
    @objc public var responseDescription:String?//NSObject already has a description field
    @objc public var messageToUser:String?
    @objc public var messageToUserImgUrl:String?
    @objc public var actionToPerform:String?
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
