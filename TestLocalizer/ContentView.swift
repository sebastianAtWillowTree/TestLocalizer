//
//  ContentView.swift
//  TestLocalizer
//
//  Created by Sebastian Aguirre on 9/23/25.
//

import SwiftUI

struct ContentView: View {
    
    let service = CrowdinService()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("test")
            Text("I want to lie down")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
