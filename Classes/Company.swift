//
//  Company.swift
//  KasaAdmin
//
//  Created by Suleyman Calik on 03/07/15.
//  Copyright (c) 2015 Calik. All rights reserved.
//

import ObjectMapper

class Company: MKEntity {
   
    var logo:String!
    var userId:String!
    var companyName:String!

    override class func newInstance() -> Mappable {
        return Company()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        logo        <-  map["logo"]
        userId      <-  map["userId"]
        companyName <-  map["companyName"]

    }
}
