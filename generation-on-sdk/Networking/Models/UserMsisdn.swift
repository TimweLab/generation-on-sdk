//
//  UserMsisdn.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserMsisdn:NSObject, Codable{
    public var msisdn:String?
    public var type:String?
    public var balance:Double?
    public var isPrimaryNumber:Bool?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getMsisdn() -> String{
        return msisdn == nil ? "" : msisdn!
    }
    
    @objc public func setMsisdn(_ value:String){
        self.msisdn = value
    }
    
    @objc public func getType() -> String{
        return type == nil ? "" : type!
    }
    
    @objc public func setType(_ value:String){
        self.type = value
    }
    
    @objc public func getBalance() -> Double{
        return balance == nil ? 0 : balance!
    }
    
    @objc public func setBalance(_ value:Double){
        self.balance = value
    }
    
    @objc public func getIsPrimaryNumber() -> Bool{
        return isPrimaryNumber == nil ? false : isPrimaryNumber!
    }
    
    @objc public func setIsPrimaryNumber(_ value:Bool){
        self.isPrimaryNumber = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
