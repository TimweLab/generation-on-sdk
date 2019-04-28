//
//  UserAttempt.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserAttempt:NSObject, Codable{
    public var attempts:Int64?
    public var attemptsEarnedDate:Int64?
    public var attemptsStatus:String?
    public var attemptsStatusDate:Int64?
    public var attemptsSource:String?
    public var attemptsDescription:String?
    public var attemptsExpirationDate:Int64?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getAttempts() -> Int64{
        return attempts == nil ? 0 : attempts!
    }
    
    @objc public func setAttempts(_ value:Int64){
        self.attempts = value
    }
    
    @objc public func getAttemptsEarnedDate() -> Int64{
        return attemptsEarnedDate == nil ? 0 : attemptsEarnedDate!
    }
    
    @objc public func setAttemptsEarnedDate(_ value:Int64){
        self.attemptsEarnedDate = value
    }
    
    @objc public func getAttemptsStatus() -> String{
        return attemptsStatus == nil ? "" : attemptsStatus!
    }
    
    @objc public func setAttemptsStatus(_ value:String){
        self.attemptsStatus = value
    }
    
    @objc public func getAttemptsStatusDate() -> Int64{
        return attemptsStatusDate == nil ? 0 : attemptsStatusDate!
    }
    
    @objc public func setAttemptsStatusDate(_ value:Int64){
        self.attemptsStatusDate = value
    }
    
    @objc public func getAttemptsSource() -> String{
        return attemptsSource == nil ? "" : attemptsSource!
    }
    
    @objc public func setAttemptsSource(_ value:String){
        self.attemptsSource = value
    }
    
    @objc public func getAttemptsDescription() -> String{
        return attemptsDescription == nil ? "" : attemptsDescription!
    }
    
    @objc public func setAttemptsDescription(_ value:String){
        self.attemptsDescription = value
    }
    
    @objc public func getAttemptsExpirationDate() -> Int64{
        return attemptsExpirationDate == nil ? 0 : attemptsExpirationDate!
    }
    
    @objc public func setAttemptsExpirationDate(_ value:Int64){
        self.attemptsExpirationDate = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
