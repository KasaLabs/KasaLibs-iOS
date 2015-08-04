//
//  UserDTO.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 25/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class UserDTO: BaseDTO {
   
    var data:User!
    
    override class func newInstance() -> Mappable {
        return UserDTO()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        data    <-  map["data"]
    }
}
