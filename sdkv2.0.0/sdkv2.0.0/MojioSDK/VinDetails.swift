//
//  VinDetails.swift
//  Motion
//
//  Created by Ashish Agarwal on 2016-02-11.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

class VinDetails: Object, Mappable {
    
    dynamic var Timestamp : NSString? = nil
    dynamic var Vin : NSString? = nil
    var Year = RealmOptional<Int>()
    dynamic var Make : NSString? = nil
    dynamic var Model : NSString? = nil
    dynamic var Engine : NSString? = nil
    var Cylinders = RealmOptional<Int>()
    dynamic var TotalFuelCapacity : FuelCapacity? = nil
    dynamic var FuelType : NSString? = nil
    var CityFuelEfficiency = RealmOptional<Double>()
    var HighwayFuelEfficiency = RealmOptional<Double>()
    var CombinedFuelEfficiency = RealmOptional<Double>()
    dynamic var Transmission : NSString? = nil
    dynamic var Message : NSString? = nil
    var Success = RealmOptional<Bool>()
    
    required convenience init?(_ map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        Timestamp <- map["Timestamp"];
        Vin <- map["Vin"];
        Year <- map["Year"];
        Make <- map["Make"];
        Model <- map[""];
        Engine <- map["Engine"];
        Cylinders <- map["Cylinders"];
        TotalFuelCapacity <- map["TotalFuelCapacity"];
        FuelType <- map["FuelType"];
        CityFuelEfficiency <- map["CityFuelEfficiency"];
        HighwayFuelEfficiency <- map["HighwayFuelEfficiency"];
        CombinedFuelEfficiency <- map["CombinedFuelEfficiency"];
        Transmission <- map["Transmission"];
        Message <- map["Message"];
        Success <- map["Success"];
    }
}
