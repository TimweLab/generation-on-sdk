//
//  EventRequest.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class EventRequest:NSObject, Codable{
    public var sessionKey:String?
    public var userProfile:UserProfile?
    public var eventType:String?
    public var eventValue:String?
    public var eventDate:String?
    public var eventChannel:String?
    public var transactionId:String?
    public var productId:String?
    public var productName:String?
    public var appSection:String?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getSessionKey() -> String{
        return sessionKey == nil ? "" : sessionKey!
    }
    
    @objc public func setSessionKey(_ value:String){
        self.sessionKey = value
    }
    
    @objc public func getUserProfile() -> UserProfile{
        return userProfile == nil ? UserProfile() : userProfile!
    }
    
    @objc public func setUserProfile(_ value:UserProfile){
        self.userProfile = value
    }
    
    @objc public func getEventType() -> String{
        return eventType == nil ? "" : eventType!
    }
    
    @objc public func setEventType(_ value:String){
        self.eventType = value
    }
    
    @objc public func getEventValue() -> String{
        return eventValue == nil ? "" : eventValue!
    }
    
    @objc public func setEventValue(_ value:String){
        self.eventValue = value
    }
    
    @objc public func getEventDate() -> String{
        return eventDate == nil ? "" : eventDate!
    }
    
    @objc public func setEventDate(_ value:String){
        self.eventDate = value
    }
    
    @objc public func getEventChannel() -> String{
        return eventChannel == nil ? "" : eventChannel!
    }
    
    @objc public func setEventChannel(_ value:String){
        self.eventChannel = value
    }
    
    @objc public func getTransactionId() -> String{
        return transactionId == nil ? "" : transactionId!
    }
    
    @objc public func setTransactionId(_ value:String){
        self.transactionId = value
    }
    
    @objc public func getProductId() -> String{
        return productId == nil ? "" : productId!
    }
    
    @objc public func setProductId(_ value:String){
        self.productId = value
    }
    
    @objc public func getProductName() -> String{
        return productName == nil ? "" : productName!
    }
    
    @objc public func setProductName(_ value:String){
        self.productName = value
    }
    
    @objc public func getAppSection() -> String{
        return appSection == nil ? "" : appSection!
    }
    
    @objc public func setAppSection(_ value:String){
        self.appSection = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}

