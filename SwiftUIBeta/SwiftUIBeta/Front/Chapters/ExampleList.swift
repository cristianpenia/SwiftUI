//
//  ExampleList.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 11/06/24.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let house = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Displays", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]

let work = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Apple Watch", imageName: "applewatch")
]

struct ExampleList: View {
    
    
    var body: some View {
        List {
            Section {
                ForEach(house, id: \.title) { device in
                    
                    Label(device.title, systemImage: device.imageName)
                }
            } header: {
                Text("Home")
            }

            Section {
                ForEach(work, id: \.title) { device in
                    
                    Label(device.title, systemImage: device.imageName)
                }
            } header: {
                Text("Home")
            }
        }
//        .listStyle(SidebarListStyle())
//        .listStyle(GroupedListStyle())
        .listStyle(InsetGroupedListStyle())
    }
}

#Preview {
    ExampleList()
}
