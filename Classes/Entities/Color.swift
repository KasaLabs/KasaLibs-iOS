//
//  Color.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 22/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class Color: MKEntity {
   
    dynamic var red:Int = 0
    dynamic var green:Int = 0
    dynamic var blue:Int = 0
    dynamic var index:Int = 0
    
    override class func newInstance() -> Mappable {
        return Color()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        red     <-  map["red"]
        green   <-  map["green"]
        blue    <-  map["blue"]
        index   <-  map["index"]
    }
    
    
    func uicolor() -> UIColor {
        return UIColor(R:red, G:green, B:blue)
    }


}
