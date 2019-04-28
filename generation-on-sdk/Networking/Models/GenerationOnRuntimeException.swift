//
//  GenerationOnRuntimeException.swift
//  generation-on-sdk
//
//  Created by Ricardo Ponciano on 17/04/2019.
//  Copyright © 2019 Timwe. All rights reserved.
//

import Foundation

@objc public class GenerationOnRuntimeException: NSError {
    @objc public var rootException:String?
    @objc public var errorStatus = Int.min
    
    public init(){
        super.init(domain: "GenerationOn", code: 0)
    }
    
    public override init(domain: String, code: Int, userInfo dict: [String : Any]? = nil) {
        super.init(domain: domain, code: code)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

internal struct ErrorBody:Codable{
    public init(){}
    
    public var message:String?
    public var statusCode:Int?
}
