//
//  Order.swift
//  KasaAdmin
//
//  Created by Suleyman Calik on 20/06/15.
//  Copyright (c) 2015 Calik. All rights reserved.
//

import ObjectMapper

class Order: MKEntity {
   
    var shiftId:String!
    var shopId: String!
    var cashierId: String!
    var registerId:String!
    var note:String!
    var paymentType:Int = 0
    var totalAmount:Double = 0
    var cancelled = false
    
    override class func newInstance() -> Mappable {
        return Order()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        shiftId     <-  map["shiftId"]
        shopId      <-  map["shopId"]
        cashierId   <-  map["cashierId"]
        registerId  <-  map["registerId"]
        note        <-  map["note"]
        paymentType <-  map["paymentType"]
        totalAmount <-  map["totalAmount"]
        cancelled   <-  map["cancelled"]
    }
}
