//
//  CrowdinService.swift
//  Vocable
//
//  Created by Sebastian Aguirre on 9/23/25.
//  Copyright © 2025 WillowTree. All rights reserved.
//

import Foundation
import CrowdinSDK

struct CrowdinService {
    
    let apiKey: String
    
    let config: CrowdinSDKConfig
    
    init() {
        print("whasdfere")
        self.apiKey = CrowdinService.testKey
        
        let crowdinProviderConfig = CrowdinProviderConfig(
            hashString: CrowdinService.testDistHash,
            sourceLanguage: "en"
        )

        self.config = CrowdinSDKConfig.config()
          .with(crowdinProviderConfig: crowdinProviderConfig)
          .with(accessToken: apiKey)
        print("where")
        CrowdinSDK.startWithConfig(self.config) {
            
            print("\n\n\n\n\n\n\(CrowdinSDK.allAvailableLocalizations)")
            
            print("\n\n\n\n\n\n\(CrowdinSDK.localizationDictionary(for: "es-ES"))")
            
            print("\n\n\n\n\n\n\(CrowdinSDK.localizationDictionary(for: "es"))")
            
            CrowdinSDK.forceRefreshLocalization()
            
        }
    }
}

extension CrowdinService {
    static let testKey = "76f789e5cb49fde1c83a41cac998234365b4490374db3ee496b83d4f1f4ee81859bf4555306f4925"
    
    static let testDistHash = "f441f8246b9a000d735f74abl0i"
}
