//
//  ColorsDTO.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 22/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class ColorsDTO: BaseDTO {

    var data:[Color]!
    
    override class func newInstance() -> Mappable {
        return ColorsDTO()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        data    <-  map["data"]
    }
}
