//
//  Acceleration.swift
//  MojioSDK
//
//  Created by Ashish Agarwal on 2016-02-11.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

public class AccelerationUnits : NSObject {
    
    // Meters per second per second
    public static let MetersPerSecondPerSecond : String = "MetersPerSecondPerSecond"
    
    // KiloMeters per hour per second
    public static let KilometersPerHourPerSecond : String  = "KilometersPerHourPerSecond"
    
    // Miles per hour per second
    public static let MilesPerHourPerSecond : String = "MilesPerHourPerSecond"
}

public class Acceleration: Object, Mappable {

    public dynamic var BaseUnit : NSString? = nil
    public dynamic var Timestamp : NSString? = nil
    public dynamic var BaseValue : Float = 0
    public dynamic var Unit : NSString? = nil
    public dynamic var Value : Float = 0

    public required convenience init?(_ map: Map) {
        self.init()
    }

    public func mapping(map: Map) {
        BaseUnit <- map["BaseUnit"];
        Timestamp <- map["Timestamp"];
        BaseValue <- map["BaseValue"];
        Unit <- map["Unit"];
        Value <- map["Value"];
    }
}