//
//  EventResponse.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class EventResponse:NSObject, Codable{
    public var success:Bool?
    public var message:String?
    public var eventDescription:String?//NSObject already has a description field
    public var messageToUser:String?
    public var messageToUserImgUrl:String?
    public var actionToPerform:String?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getSuccess() -> Bool{
        return success == nil ? false : success!
    }
    
    @objc public func setSuccess(_ value:Bool){
        self.success = value
    }
    
    @objc public func getMessage() -> String{
        return message == nil ? "" : message!
    }
    
    @objc public func setMessage(_ value:String){
        self.message = value
    }
    
    @objc public func getEventDescription() -> String{
        return eventDescription == nil ? "" : eventDescription!
    }
    
    @objc public func setEventDescription(_ value:String){
        self.eventDescription = value
    }
    
    @objc public func getMessageToUser() -> String{
        return messageToUser == nil ? "" : messageToUser!
    }
    
    @objc public func setMessageToUser(_ value:String){
        self.messageToUser = value
    }
    
    @objc public func getMessageToUserImgUrl() -> String{
        return messageToUserImgUrl == nil ? "" : messageToUserImgUrl!
    }
    
    @objc public func setMessageToUserImgUrl(_ value:String){
        self.messageToUserImgUrl = value
    }
    
    @objc public func getActionToPerform() -> String{
        return actionToPerform == nil ? "" : actionToPerform!
    }
    
    @objc public func setActionToPerform(_ value:String){
        self.actionToPerform = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
