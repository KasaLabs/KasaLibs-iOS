//
//  CompaniesDTO.swift
//  KasaAdmin
//
//  Created by Suleyman Calik on 03/07/15.
//  Copyright (c) 2015 Calik. All rights reserved.
//

import ObjectMapper

class CompaniesDTO: BaseDTO {
   
    var data:[Company]!
    

    override class func newInstance() -> Mappable {
        return CompaniesDTO()
    }

    override func mapping(map: Map) {
        super.mapping(map)
        
        data    <-  map["data"]
    }

}
