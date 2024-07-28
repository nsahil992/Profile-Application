//
//  ContentView.swift
//  Splash Screen
//
//  Created by Sahil on 28/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Home screen of this app")
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
