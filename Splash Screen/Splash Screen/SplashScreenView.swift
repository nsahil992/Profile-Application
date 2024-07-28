//
//  SplashScreenView.swift
//  Splash Screen
//
//  Created by Sahil on 28/07/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                Image("mascot")
                Text("Impact Devs")
                    .font(.system(size: 40))
                    .foregroundStyle(.black)
                    .opacity(0.6)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.0)) {
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
