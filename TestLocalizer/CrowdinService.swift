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
        self.apiKey = CrowdinService.testKey
        
        let crowdinProviderConfig = CrowdinProviderConfig(
            hashString: CrowdinService.testDistHash,
            sourceLanguage: "en"
        )

        self.config = CrowdinSDKConfig.config()
          .with(crowdinProviderConfig: crowdinProviderConfig)
          .with(accessToken: apiKey)
          .with(settingsEnabled: true)
          .with(realtimeUpdatesEnabled: true)
          .with(debugEnabled: true)
        /*
        let handlerId = CrowdinSDK.addDownloadHandler {
            print("New localization downloaded!")
            // Perform additional actions, such as updating the UI
            CrowdinSDK.startRealtimeUpdates(success: { print("success"); CrowdinSDK.reloadUI() }, error: { _ in print("error")})
            CrowdinSDK.reloadUI()
        }

*/
        // Optionally, you can remove the handler later if needed
        
        
        CrowdinSDK.startWithConfig(self.config) {
            
            print("\n\n\n\n\n\n(1)\(CrowdinSDK.allAvailableLocalizations)")
            /*
            print("\n\n\n\n\n\n(2)\(CrowdinSDK.localizationDictionary(for: "en"))")
            */
            print("\n\n\n\n\n\n(3)\(CrowdinSDK.localizationDictionary(for: "es"))")
            
        }
        /*
        CrowdinSDK.startRealtimeUpdates(success: {
            print("successive")
            //CrowdinSDK.forceRefreshLocalization()
            //CrowdinSDK.reloadUI()
            
            print("\n\n\n\n\n\n(5)\(CrowdinSDK.localizationDictionary(for: "es"))")
            
            CrowdinSDK.reloadUI()
        },
        error: { e in print("errored \(e)")})*/
    }
}

extension CrowdinService {
    static let testKey = "345d3788b2d69ab2e4a249e38e2b99702fe288e7b2df88a7d7ff225fe9b61d739b9c1b0a1a10ac7d"
    
    static let testDistHash = "88a1c246e7934d371323a9abl0i"
}
