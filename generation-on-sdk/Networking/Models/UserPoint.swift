//
//  UserPoint.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserPoint:Codable{
    var points:Int64?
    var pointsEarnedDate:Int64?
    var pointsStatus:String?
    var pointsStatusDate:Int64?
    var pointsSource:String?
    var pointsDescription:String?
    var pointsExpirationDate:Int64?
    var additionalParams:[String:String]?
    
    public init(){}
}
