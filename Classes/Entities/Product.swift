//
//  Product.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 15/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class Product: MKEntity {
   
    dynamic var price:Double = 0
    dynamic var name:String = ""
    dynamic var shopId:String = ""
    dynamic var colorId:String = ""
    dynamic var categoryId:String = ""
    dynamic var supplierId:String = ""
    dynamic var abbreviation:String = ""
    
    var color:Color! { return Realm.objectForPrimaryKey(Color.self, key:colorId)}
    var shop:Shop! { return Realm.objectForPrimaryKey(Shop.self, key:shopId)}
    var category:ProductCategory! { return Realm.objectForPrimaryKey(ProductCategory.self, key:categoryId)}

    override class func newInstance() -> Mappable {
        return Product()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        name            <-  map["name"]
        price           <-  map["price"]
        shopId          <-  map["shopId"]
        colorId         <-  map["colorId"]
        categoryId      <-  map["categoryId"]
        supplierId      <-  map["supplierId"]
        abbreviation    <-  map["abbreviation"]
        
    }

}
