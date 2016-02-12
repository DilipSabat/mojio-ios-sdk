//
//  AccidentState.swift
//  Motion
//
//  Created by Ashish Agarwal on 2016-02-11.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit
import ObjectMapper

class AccidentState: Mappable {
    
    var Timestamp : NSString?;
    var Value : Bool?;
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        Timestamp <- map["Timestamp"];
        Value <- map["Value"];
    }
    
}
