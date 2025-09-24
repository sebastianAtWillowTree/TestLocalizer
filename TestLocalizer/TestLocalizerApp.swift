//
//  TestLocalizerApp.swift
//  TestLocalizer
//
//  Created by Sebastian Aguirre on 9/23/25.
//

import SwiftUI

@main
struct TestLocalizerApp: App {
    
    let service = CrowdinService()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
