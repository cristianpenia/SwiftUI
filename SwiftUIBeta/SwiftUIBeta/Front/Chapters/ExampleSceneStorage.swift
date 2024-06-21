//
//  ExampleSceneStorage.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct ExampleSceneStorage: View {
    
    @SceneStorage("tweet") private var tweet: String = ""
//    @State private var tweet: String = ""
    @SceneStorage("toggle_publish_best_hour") private var togglePublishBestHour: Bool = false
//    @State private var togglePublishBestHour: Bool = false
    
    var body: some View {
        
        Form {
            TextEditor(text: $tweet)
                .frame(width: 300, height: 300)
            
            Toggle(isOn: $togglePublishBestHour) {
                Text("Publicar a la mejor hora")
            }
            
            HStack {
                
                Spacer()
                
                Button(togglePublishBestHour ? "Publicar a la mejor hora" : "Publicar ahora" ) {
                    print("publicado...")
                }
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ExampleSceneStorage()
}
