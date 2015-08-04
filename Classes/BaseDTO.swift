//
//  BaseDTO.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 21/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class BaseDTO:Mappable {
    
    var result:String!
    var httpCode:Int!
    
    
    class func newInstance() -> Mappable {
        return BaseDTO()
    }
    
//    required init?(_ map:Map) {
//        mapping(map)
//    }
    
    func mapping(map: Map) {
        
        result      <- map["result"]
        httpCode    <- map["http_code"]
    }
}
