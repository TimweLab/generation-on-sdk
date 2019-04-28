//
//  UserProgression.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class UserProgression:NSObject, Codable{
    public var progression:Int64?
    public var progressionTotal:Int64?
    public var progressionName:String?
    public var progressionDescription:String?
    public var progressionImageUrl:String?
    
    public var progressionCategory:String?
    public var prograssionColorCode:String?
    
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getProgression() -> Int64{
        return progression == nil ? 0 : progression!
    }
    
    @objc public func setProgression(_ value:Int64){
        self.progression = value
    }
    
    @objc public func getProgressionTotal() -> Int64{
        return progressionTotal == nil ? 0 : progressionTotal!
    }
    
    @objc public func setProgressionTotal(_ value:Int64){
        self.progressionTotal = value
    }
    
    @objc public func getProgressionName() -> String{
        return progressionName == nil ? "" : progressionName!
    }
    
    @objc public func setProgressionName(_ value:String){
        self.progressionName = value
    }
    
    @objc public func getProgressionDescription() -> String{
        return progressionDescription == nil ? "" : progressionDescription!
    }
    
    @objc public func setProgressionDescription(_ value:String){
        self.progressionDescription = value
    }
    
    @objc public func getProgressionImageUrl() -> String{
        return progressionImageUrl == nil ? "" : progressionImageUrl!
    }
    
    @objc public func setProgressionImageUrl(_ value:String){
        self.progressionImageUrl = value
    }
    
    @objc public func getProgressionCategory() -> String{
        return progressionCategory == nil ? "" : progressionCategory!
    }
    
    @objc public func setProgressionCategory(_ value:String){
        self.progressionCategory = value
    }
    
    @objc public func getPrograssionColorCode() -> String{
        return prograssionColorCode == nil ? "" : prograssionColorCode!
    }
    
    @objc public func setPrograssionColorCode(_ value:String){
        self.prograssionColorCode = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
