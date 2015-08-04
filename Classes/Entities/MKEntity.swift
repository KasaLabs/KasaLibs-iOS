//
//  MKEntity.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 15/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper
import RealmSwift


class MKEntity:Object, Mappable {
   
    dynamic var id:String = ""    
    dynamic var createdAt:String = ""
    dynamic var updatedAt:String = ""
    dynamic var active:Bool = false
    
    override static func primaryKey() -> String? {
        return "id"
    }

    
    class func newInstance() -> Mappable {
        return MKEntity()
    }
    
    func mapping(map: Map) {
        
        if id == "" {
            id  <- map["id"]
        }
        createdAt   <-  map["createdAt"]
        updatedAt   <-  map["updatedAt"]
        active      <-  map["active"]
        
    }

}
