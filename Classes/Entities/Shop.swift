//
//  Shop.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 15/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class Shop: MKEntity {
   
    dynamic var name:String = ""
    dynamic var logo:String = ""
    dynamic var companyId:String = ""

    override class func newInstance() -> Mappable {
        return Shop()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        name        <-  map["name"]
        logo        <-  map["logo"]
        companyId   <-  map["companyId"]
    }

}
