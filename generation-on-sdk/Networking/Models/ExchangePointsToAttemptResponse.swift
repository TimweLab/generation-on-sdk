//
//  ExchangePointsToAttemptResponse.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct ExchangePointsToAttemptResponse:Codable{
    var success:Bool?
    var message:String?
    var description:String?
    var messageToUser:String?
    var messageToUserImgUrl:String?
    var actionToPerform:String?
    var additionalParams:[String:String]?
    
    public init(){}
}
