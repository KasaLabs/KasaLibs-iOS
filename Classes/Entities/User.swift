//
//  User.swift
//  MobilKasa
//
//  Created by Suleyman Calik on 15/05/15.
//  Copyright (c) 2015 Kasa. All rights reserved.
//

import ObjectMapper

class User: MKEntity {
    
    
    /*
    email = "suleymancalik@gmail.com";
    expirationDate = "2015-07-14 07:12:24 +0000";
    "first_name" = "S\U00fcleyman";
    gender = male;
    id = 10152979121993883;
    "last_name" = "\U00c7al\U0131k";
    
    link = "https://www.facebook.com/app_scoped_user_id/10152979121993883/";
    locale = "tr_TR";
    name = "S\U00fcleyman \U00c7al\U0131k";
    refreshDate = "2015-05-15 12:26:13 +0000";
    timezone = 3;
    token = CAAFVJaJafcYBAAiR9yLr7jmZC92Y3ZBYs7ZC0G1GcC4F78J3rKF0yBJGBlq2aHaCgqZCrftlhKrYZCicugJlH0sNira9aLN0tOnsBd3xiiF9VeRiZBTZCs0B0wQqZCwNTmPP9Aql9C1bQnCP5KrGn2hDVZCatzeustswozfDxoi75bZB8VyZBO3KK7qRCTlfi2h1EuueceWZBV9s9jtBdtig003FfXGqXYPxxOU1r5cT6AXeL0mQMllwj0z18Mzh0sTNVJcZAmN8OBvKJ3efz2G4bvxcH;

    "updated_time" = "2015-03-01T01:32:27+0000";
    permissions = "{(\n    email,\n    \"contact_email\",\n    \"public_profile\"\n)}";
    verified = 1;
    */

    dynamic var email:String = ""
    dynamic var username:String = ""
    dynamic var firstName:String = ""
    dynamic var lastName:String = ""
    dynamic var fullName:String = ""
    dynamic var gender:String = ""
    dynamic var fbId:String = ""
    dynamic var link:String = ""
    dynamic var locale:String = ""

    dynamic var timezone:Int = 0
    dynamic var verified:Bool = false
    
    dynamic var balance:Double = 0

//    dynamic var permissions:String = ""
    dynamic var updated_time:String = ""

    dynamic var fbToken:String = ""
    dynamic var tokenRefreshDate:String = ""
    dynamic var tokenExpirationDate:String = ""

    override class func newInstance() -> Mappable {
        return User()
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        email       <-  map["email"]
        username    <-  map["username"]
        firstName   <-  map["firstName"]
        lastName    <-  map["lastName"]
        fullName    <-  map["fullName"]
        gender      <-  map["gender"]
        fbId        <-  map["fbId"]
        link        <-  map["link"]
        locale      <-  map["locale"]
        timezone    <-  map["timezone"]
        verified    <-  map["verified"]
        balance     <-  map["balance"]
//        permissions <-  map["permissions"]
        updated_time        <-  map["updated_time"]
        fbToken             <-  map["fbToken"]
        tokenRefreshDate    <-  map["tokenRefreshDate"]
        tokenExpirationDate <-  map["tokenExpirationDate"]
        
    }
    
    
    class func currentUser() -> User! {
        return Realm.objects(User).first
    }

}




