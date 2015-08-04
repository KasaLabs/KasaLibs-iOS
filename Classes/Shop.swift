//
//  Shop.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 15/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class Shop: MKEntity {
   
    var name:String!
    var logo:String!
    var companyId:String!
    var endorsement:Double = 0

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
