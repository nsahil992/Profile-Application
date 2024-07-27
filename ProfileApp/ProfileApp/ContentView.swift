//
//  ContentView.swift
//  ProfileApp
//
//  Created by Sahil on 27/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                VStack(alignment: .center, spacing: 20) {
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    
                    Text("Emma Jackson")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .fontDesign(.default)
                    
                    Text(" iOS | Front end Developer")
                        .font(.title3)
                        .fontWeight(.regular)
                        .fontDesign(.default)
                        .foregroundStyle(.white)
                    
                    URL()
                }
                .padding(.top, 20)
                Spacer()
                
                VStack(alignment: .center, spacing: 30) {
                    Follow()
                }
                .padding(.bottom, 1)
                
                HStack {
                    VStack {
                        Text("1775")
                            .font(.system(size: 30))
                            .foregroundStyle(.pink)
                        Text("Appreciation")
                            .foregroundStyle(.secondary)
                    }
                    .padding(.horizontal)
                    VStack {
                        Text("800")
                            .font(.system(size: 30))
                            .foregroundStyle(.pink)
                        Text("Follower")
                            .foregroundStyle(.secondary)
                    }
                    .padding(.horizontal)
                    VStack {
                        Text("231")
                            .font(.system(size: 30))
                            .foregroundStyle(.pink)
                        Text("Following")
                            .foregroundStyle(.secondary)
                    }
                    .padding(.horizontal)
                    
                }
                VStack(alignment: .center, spacing: 10) {
                    Text("About You")
                        .font(.largeTitle)
                        .padding()
                    Text("I'm a iOS Frontend Developer. Welcome to the series of iOS-15 projects. Let's dive deeper and create some more exciting projects.")
                        .font(.system(size: 18))
                        .padding([.leading, .trailing, .bottom], 10)
                        .foregroundColor(.black)
                }
                .lineLimit(nil)
            }
            .padding(.top, 20)
        }
    }
}


#Preview {
    ContentView()
}

struct URL: View {
    var body: some View {
        HStack {
            Group {
                Image(systemName: "heart.circle")
                    .font(.system(size: 35))
                Image(systemName: "network")
                    .font(.system(size: 35))
                Image(systemName: "message.circle")
                    .font(.system(size: 35))
                Image(systemName: "phone.circle")
                    .font(.system(size: 35))
            }
            .padding(10)
        }
        .shadow(color: .pink, radius: 5, x: 5, y: 5)
        .foregroundColor(.white)
    }
}

struct Follow: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 120)
                .frame(width: 210, height: 60)
                .foregroundColor(.white)
                .shadow(color: .pink, radius: 10, x: 3, y: 5)
            Text("Follow")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.pink)
        }
        .padding(.bottom, 40)
        .offset(x: 0, y: 30)
    }
}
