//
//  OrdersDTO.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 21/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class OrdersDTO:BaseDTO {
    
    var data:[Order]!
    
//    required init?(_ map:Map) {
//        super.init(map)
//    }
    
    override class func newInstance() -> Mappable {
        return OrdersDTO()
    }

    
    override func mapping(map: Map) {
        super.mapping(map)
        
        data    <-  map["data"]
    }
    
}