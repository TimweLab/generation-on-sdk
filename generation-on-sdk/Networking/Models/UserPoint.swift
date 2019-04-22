//
//  UserPoint.swift
//  generation-on-sdk
//
//  Created by Neo Potter on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserPoint:NSObject, Codable{
    @objc public var points:Int64 = Int64.min
    @objc public var pointsEarnedDate:Int64 = Int64.min
    @objc public var pointsStatus:String?
    @objc public var pointsStatusDate:Int64 = Int64.min
    @objc public var pointsSource:String?
    @objc public var pointsDescription:String?
    @objc public var pointsExpirationDate:Int64 = Int64.min
    @objc public var additionalParams:[String:String]?
    
    override public init(){}
}
