//
//  Prize.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 20/03/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class Prize:NSObject, Codable{
    public var prizeCode:String?
    public var prizeName:String?
    public var prizeCategory:String?
    public var prizeDescription:String?
    public var prizeImageUrl:String?
    public var prizeTier:Int64?
    public var prizeTierName:String?
    public var totalUserTicketsForPrize:Int64?
    public var additionalParams:[String:String]?
    
    override public init(){}
    
    @objc public func getPrizeCode() -> String{
        return prizeCode == nil ? "" : prizeCode!
    }
    
    @objc public func setPrizeCode(_ value:String){
        self.prizeCode = value
    }
    
    @objc public func getPrizeCategory() -> String{
        return prizeCategory == nil ? "" : prizeCategory!
    }
    
    @objc public func setPrizeCategory(_ value:String){
        self.prizeCategory = value
    }
    
    @objc public func getPrizeName() -> String{
        return prizeName == nil ? "" : prizeName!
    }
    
    @objc public func setPrizeName(_ value:String){
        self.prizeName = value
    }
    
    @objc public func getPrizeDescription() -> String{
        return prizeDescription == nil ? "" : prizeDescription!
    }
    
    @objc public func setPrizeDescription(_ value:String){
        self.prizeDescription = value
    }
    
    @objc public func getPrizeImageUrl() -> String{
        return prizeImageUrl == nil ? "" : prizeImageUrl!
    }
    
    @objc public func setPrizeImageUrl(_ value:String){
        self.prizeImageUrl = value
    }
    
    @objc public func getPrizeTier() -> Int64{
        return prizeTier == nil ? 0 : prizeTier!
    }
    
    @objc public func setPrizeTier(_ value:Int64){
        self.prizeTier = value
    }
    
    @objc public func getPrizeTierName() -> String{
        return prizeTierName == nil ? "" : prizeTierName!
    }
    
    @objc public func setPrizeTierName(_ value:String){
        self.prizeTierName = value
    }
    
    @objc public func getTotalUserTicketsForPrize() -> Int64{
        return totalUserTicketsForPrize == nil ? 0 : totalUserTicketsForPrize!
    }
    
    @objc public func setTotalUserTicketsForPrize(_ value:Int64){
        self.totalUserTicketsForPrize = value
    }
    
    @objc public func getAdditionalParams() -> [String:String]{
        return additionalParams == nil ? [:] : additionalParams!
    }
    
    @objc public func setAdditionalParams(_ value:[String:String]){
        self.additionalParams = value
    }
}
