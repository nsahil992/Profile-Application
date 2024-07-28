//
//  ContentView.swift
//  PA
//
//  Created by Sahil on 28/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ImgNameDesigURL()
            Follow()
            Engagement()
            About()
        }
    }
}

#Preview {
    ContentView()
}

struct ImgNameDesigURL: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("myImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 180)
                .clipShape(Circle())
                .shadow(color: .pink, radius: 10, x: 5, y: 5)
                .padding(.top, 40)
                .padding(.bottom, 10)
            Group {
                Text("Emily Jones")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(5)
                Text("iOS | Front End Developer")
                    .font(.title2)
                    .padding(30)
                HStack {
                    Group {
                        Image(systemName: "heart.circle")
                        Image(systemName: "network")
                        Image(systemName: "message.circle")
                        Image(systemName: "phone.circle")
                    }
                    .font(.system(size: 40))
                    .padding(.horizontal)
                }
            }
            .foregroundColor(.white)
            .shadow(color: .pink, radius: 10, x: 5, y: 5)
        }
        .padding(.top, 30)
        .offset(x: 0, y: -190)
    }
}

struct Follow: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 180)
                .padding(9)
                .frame(width: 250, height: 70, alignment: .center)
                .foregroundColor(.white)
                .shadow(color: .pink, radius: 10, x: 5, y: 5)
            Text("Follow")
                .font(.largeTitle)
                .foregroundStyle(.pink)
                .fontWeight(.bold)
                .padding(40)
        }
        .offset(x: 0, y: 115)
    }
}

struct Engagement: View {
    var body: some View {
        HStack(alignment: .center) {
            Group {
                VStack {
                    Text("1775")
                        .font(.largeTitle)
                        .foregroundStyle(.pink)
                    Text("Appreciation")
                        .foregroundStyle(.secondary)
                }
                VStack {
                    Text("800")
                        .font(.largeTitle)
                        .foregroundStyle(.pink)
                    Text("Followers")
                        .foregroundStyle(.secondary)
                }
                VStack {
                    Text("231")
                        .font(.largeTitle)
                        .foregroundStyle(.pink)
                    Text("Following")
                        .foregroundStyle(.secondary)
                }
            }
            .padding(.horizontal)
        }
        .offset(x: 0, y: 190)
    }
}

struct About: View {
    var body: some View {
        Group {
            VStack(alignment: .center) {
                Text("About You")
                    .font(.largeTitle)
                    .padding()
            }
            .offset(x: 0, y: 270)
            VStack(alignment:  .center) {
                Text("I'm a iOS Frontend Developer. Welcome to the series of iOS-15 projects. Let's dive deeper and create some more exciting projects")
                    .font(.title3)
                    .fontWeight(.light)
            }
            .padding()
            .offset(x: 0, y: 350)
        }
    }
}

