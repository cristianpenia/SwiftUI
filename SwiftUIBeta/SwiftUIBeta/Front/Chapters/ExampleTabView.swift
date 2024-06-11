//
//  ExampleTabView.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 11/06/24.
//

import SwiftUI

struct ExampleTabView: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(.blue)
            
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundStyle(.red)
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
        .frame(height: 400)
//        .accentColor(.green)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ExampleTabView()
}

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Home")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Profile")
        }
    }
}
