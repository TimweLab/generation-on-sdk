//
//  UserPrize.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserPrize:NSObject, Codable{
    public var prize:Prize?
    public var prizeEarnedDate:Int64?
    public var prizeStatus:String?
    public var prizeStatusDate:Int64?
    public var prizeSource:String?
    public var prizeExpirationDate:Int64?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getPrize() -> Prize{
        return prize == nil ? Prize() : prize!
    }
    
    @objc public func setPrize(_ value:Prize){
        self.prize = value
    }
    
    @objc public func getPrizeEarnedDate() -> Int64{
        return prizeEarnedDate == nil ? 0 : prizeEarnedDate!
    }
    
    @objc public func setPrizeEarnedDate(_ value:Int64){
        self.prizeEarnedDate = value
    }
    
    @objc public func getPrizeStatus() -> String{
        return prizeStatus == nil ? "" : prizeStatus!
    }
    
    @objc public func setPrizeStatus(_ value:String){
        self.prizeStatus = value
    }
    
    @objc public func getPrizeStatusDate() -> Int64{
        return prizeStatusDate == nil ? 0 : prizeStatusDate!
    }
    
    @objc public func setPrizeStatusDate(_ value:Int64){
        self.prizeStatusDate = value
    }
    
    @objc public func getPrizeSource() -> String{
        return prizeSource == nil ? "" : prizeSource!
    }
    
    @objc public func setPrizeSource(_ value:String){
        self.prizeSource = value
    }
    
    @objc public func getPrizeExpirationDate() -> Int64{
        return prizeExpirationDate == nil ? 0 : prizeExpirationDate!
    }
    
    @objc public func setPrizeExpirationDate(_ value:Int64){
        self.prizeExpirationDate = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
