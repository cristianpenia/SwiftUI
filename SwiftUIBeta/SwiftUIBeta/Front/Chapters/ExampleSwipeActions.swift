//
//  ExampleSwipeActions.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 24/06/24.
//

import SwiftUI


struct DeviceExample {
    let name: String
    let systemImage: String
}

let arrayOfDevice = [
    DeviceExample(name: "iphone", systemImage: "iphone"),
    DeviceExample(name: "ipad", systemImage: "ipad"),
    DeviceExample(name: "pc", systemImage: "pc"),
    DeviceExample(name: "4K", systemImage: "4k"),
    DeviceExample(name: "ipod", systemImage: "ipod"),
    DeviceExample(name: "laptop", systemImage: "laptopcomputer")
]

struct ExampleSwipeActions: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(arrayOfDevice, id: \.name) { device in
                    Label(device.name, systemImage: device.systemImage)
                        .swipeActions() {
                            Button(action: {
                                print("Compartir")
                            }, label: {
                                Label("Compartir", systemImage: "square.and.arrow.up")
                            })
                            .tint(.blue)
                            Button(action: {
                                print("Favoritos")
                            }, label: {
                                Label("Favoritos", systemImage: "star.fill")
                            })
                            .tint(.yellow)
                        }
                        .swipeActions(edge: .leading) {
                            Button(action: {
                                print("Eliminar")
                            }, label: {
                                Label("Eliminar", systemImage: "trash.fill")
                            })
                            .tint(.red)
                        }
                }
            }
            .refreshable {
                print("refrescar")
            }
            .navigationTitle("Device")
        }
        
    }
}

#Preview {
    ExampleSwipeActions()
}
