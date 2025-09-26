//
//  ContentView.swift
//  TestLocalizer
//
//  Created by Sebastian Aguirre on 9/23/25.
//

import SwiftUI
import CrowdinSDK

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(String(localized:"test"))
            Text("preset_0B491C3E-1A7F-4A94-A523-6DE329BF9E72".cw_localized)
            Text("other".cw_localized)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
