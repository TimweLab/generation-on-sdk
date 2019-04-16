//
//  UserPoint.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

public struct UserPoint:Codable{
    public var points:Int64?
    public var pointsEarnedDate:Int64?
    public var pointsStatus:String?
    public var pointsStatusDate:Int64?
    public var pointsSource:String?
    public var pointsDescription:String?
    public var pointsExpirationDate:Int64?
    public var additionalParams:[String:String]?
    
    public init(){}
}
