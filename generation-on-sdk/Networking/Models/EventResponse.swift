//
//  EventResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct EventResponse:Codable{
    public var success:Bool?
    public var message:String?
    public var description:String?
    public var messageToUser:String?
    public var messageToUserImgUrl:String?
    public var actionToPerform:String?
    public var additionalParams:[String:String]?
    
    public init(){}
}
