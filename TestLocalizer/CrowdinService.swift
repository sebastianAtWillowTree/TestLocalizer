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
            
            print("\n\n\n\n\n\n\(CrowdinSDK.allAvailableLocalizations)")
            
            print("\n\n\n\n\n\n\(CrowdinSDK.localizationDictionary(for: "en"))")
            
            print("\n\n\n\n\n\n\(CrowdinSDK.localizationDictionary(for: "es-ES"))")
            
            

            
            CrowdinSDK.forceRefreshLocalization()
            CrowdinSDK.reloadUI()
        }
        CrowdinSDK.startRealtimeUpdates(success: {
            print("successive")
            CrowdinSDK.forceRefreshLocalization()
            CrowdinSDK.reloadUI()
            print("\n\n\n\n\n\n\(CrowdinSDK.localizationDictionary(for: "en"))")
            
            print("\n\n\n\n\n\n\(CrowdinSDK.localizationDictionary(for: "es"))")
        },
                                        error: { e in print("errored \(e)")})
        
        CrowdinSDK.startIntervalUpdates(interval: 900)
        
        CrowdinSDK.currentLocalization = "es"
    }
}

extension CrowdinService {
    static let testKey = "76f789e5cb49fde1c83a41cac998234365b4490374db3ee496b83d4f1f4ee81859bf4555306f4925"
    
    static let testDistHash = "7c2170e92b5920904e6b46abl0i"
}
