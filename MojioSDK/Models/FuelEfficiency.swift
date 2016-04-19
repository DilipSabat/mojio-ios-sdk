//
//  FuelEfficiency.swift
//  MojioSDK
//
//  Created by Ashish Agarwal on 2016-02-11.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

public class FuelEfficiencyUnits : NSObject {
    public static let MilesPerGallon : String = "MilesPerGallon"
    public static let KilometerPerLiter : String = "KilometerPerLiter"
    public static let LitersPerHundredKilometers : String = "LitersPerHundredKilometers"
}

public class FuelEfficiency: Object, Mappable {
    
    public dynamic var BaseUnit : NSString? = nil
    public dynamic var Statistics : MeasurementStatistics? = nil
    public dynamic var BenchmarkTime : NSString? = nil
    public dynamic var BenchmarkStatistics : MeasurementStatistics? = nil
    public dynamic var Timestamp : NSString? = nil
    public dynamic var BaseValue : Float = 0
    public dynamic var Unit  : NSString? = nil
    public dynamic var Value : Float = 0

    public required convenience init?(_ map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        BaseUnit <- map["BaseUnit"];
        Statistics <- map["Statistics"];
        BenchmarkTime <- map["BenchmarkTime"];
        BenchmarkStatistics <- map["BenchmarkStatistics"];
        Timestamp <- map["Timestamp"];
        BaseValue <- map["BaseValue"];
        Unit <- map["Unit"];
        Value <- map["Value"];
    }

}
