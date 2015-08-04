//
//  ShopsDTO.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 21/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class ShopsDTO:BaseDTO {
    
    var data:[Shop]!
    

    override class func newInstance() -> Mappable {
        return ShopsDTO()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        data    <-  map["data"]
    }
    
}