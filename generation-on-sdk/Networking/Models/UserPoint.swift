//
//  UserPoint.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserPoint:NSObject, Codable{
    public var points:Int64?
    public var pointsEarnedDate:Int64?
    public var pointsStatus:String?
    public var pointsStatusDate:Int64?
    public var pointsSource:String?
    public var pointsDescription:String?
    public var pointsExpirationDate:Int64?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getPoints() -> Int64{
        return points == nil ? 0 : points!
    }
    
    @objc public func setPoints(_ value:Int64){
        self.points = value
    }
    
    @objc public func getPointsEarnedDate() -> Int64{
        return pointsEarnedDate == nil ? 0 : pointsEarnedDate!
    }
    
    @objc public func setPointsEarnedDate(_ value:Int64){
        self.pointsEarnedDate = value
    }
    
    @objc public func getPointsStatus() -> String{
        return pointsStatus == nil ? "" : pointsStatus!
    }
    
    @objc public func setPointsStatus(_ value:String){
        self.pointsStatus = value
    }
    
    @objc public func getPointsStatusDate() -> Int64{
        return pointsStatusDate == nil ? 0 : pointsStatusDate!
    }
    
    @objc public func setPointsStatusDate(_ value:Int64){
        self.pointsStatusDate = value
    }
    
    @objc public func getPointsSource() -> String{
        return pointsSource == nil ? "" : pointsSource!
    }
    
    @objc public func setPointsSource(_ value:String){
        self.pointsSource = value
    }
    
    @objc public func getPointsDescription() -> String{
        return pointsDescription == nil ? "" : pointsDescription!
    }
    
    @objc public func setPointsDescription(_ value:String){
        self.pointsDescription = value
    }
    
    @objc public func getPointsExpirationDate() -> Int64{
        return pointsExpirationDate == nil ? 0 : pointsExpirationDate!
    }
    
    @objc public func setPointspointsExpirationDate(_ value:Int64){
        self.pointsExpirationDate = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
