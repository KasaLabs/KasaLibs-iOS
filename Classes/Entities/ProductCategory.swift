//
//  ProductCategory.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 22/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class ProductCategory: MKEntity {
   
    dynamic var name:String = ""
    dynamic var shopId:String = ""

    override class func newInstance() -> Mappable {
        return ProductCategory()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        name            <-  map["name"]
        shopId          <-  map["shopId"]
    }
    
}
