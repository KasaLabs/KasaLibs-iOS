//
//  CategoriesDTO.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 22/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class CategoriesDTO: BaseDTO {
   
    var data:[ProductCategory]!
    
    override class func newInstance() -> Mappable {
        return CategoriesDTO()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        data    <-  map["data"]
    }
}
