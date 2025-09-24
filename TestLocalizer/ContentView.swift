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
            Text("test")
            Text("I want to lie down")
            Text("other".cw_localized)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
