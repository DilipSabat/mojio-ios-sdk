//
//  MojioClientEnvironment.swift
//  Motion
//
//  Created by Ashish Agarwal on 2016-02-21.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit

enum MojioClientRegion : String {
    case Production = ""
    case NAProduction = "na-production-"
    case EUProduction = "eu-production-"
    case Staging = "staging-"
    case NAStaging = "na-staging-"
    case EUStaging = "eu-staging-"
    case Trial = "trial-"

    static func getDefaultRegion() -> MojioClientRegion {
        return Production
    }
}

class MojioClientEnvironment {
    
    static private let ApiEndpointFormat : String = "https://%@api.moj.io/v2/"
    static private let PushEndpointFormat : String = "https://%@push.moj.io/v2/"
    static private let MyMojioEndpointFormat : String = "https://%@my.moj.io/"
    static private let AccountsEndpointFormat : String = "https://%@accounts.moj.io/"
    
    static private let clientEnvironment = MojioClientEnvironment()
    
    internal var region : String?
    
    internal var apiEndpoint : String?
    internal var pushEndpoint : String?
    internal var myMojioEndpoint : String?
    internal var accountsEndpoint : String?
    
    init() {
        if self.region == nil {
            self.setDefaultRegion()
        }
    }
    
    static func getEnvironment() -> MojioClientEnvironment {
        return MojioClientEnvironment.clientEnvironment
    }

    func getRegion() -> MojioClientRegion {
        if self.region != nil {
            return MojioClientRegion.init(rawValue: self.region!)!
        }

        return MojioClientRegion.getDefaultRegion()
    }
    
    /**
        Letting an app developer ovveride the default environment. This should be used only for development purposes to test the functionality of the app in different continents
     */
    func setRegion (region : MojioClientRegion) {
        self.region = region.rawValue
        self.apiEndpoint = String.init(format: MojioClientEnvironment.ApiEndpointFormat, arguments: [region.rawValue])
        self.pushEndpoint = String.init(format: MojioClientEnvironment.PushEndpointFormat, arguments: [region.rawValue])
        self.myMojioEndpoint = String.init(format: MojioClientEnvironment.MyMojioEndpointFormat, arguments: [region.rawValue])
        self.accountsEndpoint = String.init(format: MojioClientEnvironment.AccountsEndpointFormat, arguments: [region.rawValue])
    }
    
    func setDefaultRegion () {
        self.region = MojioClientRegion.getDefaultRegion().rawValue
    }
    
    func getApiEndpoint () -> String {
        return apiEndpoint!
    }
    
    func getPushEndpoint () -> String {
        return pushEndpoint!
    }
    
    func getMyMojioEndpoint () -> String {
        return myMojioEndpoint!
    }
    
    func getAccountsEndpoint () -> String {
        return accountsEndpoint!
    }
}
