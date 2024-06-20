//
//  ExampleObservedObjectVSStateObject.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct ExampleObservedObjectVSStateObject: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        
        VStack {
            
            Text("Contador: \(counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            
            Button {
                counter += 1
            } label: {
                Text("Incremetar contador")
            }
            
            ListVideos()
            
            Spacer()
        }
    }
}

struct ListVideos: View {
    
//    @ObservedObject private var videoViewModel = VideoViewModel()
    @StateObject private var videoViewModel = VideoViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                RemoveVideos(videoViewModel: videoViewModel)
                
                List(videoViewModel.videosModel, id: \.self) { video in
                    Text(video)
                }
                .navigationTitle("Rufus Videos")
                .navigationBarItems(leading: Button("Añadir", action: videoViewModel.addMoreTopics))
            }
            
        }
    }
}

struct RemoveVideos: View {
    
    @ObservedObject var videoViewModel: VideoViewModel
    
    var body: some View {
        
        Text("Rufus Remove video")
    }
}


final class VideoViewModel: ObservableObject {
    // @Published es parecido al @State solo que en lugar de usarce en una struct se usa en una clase y asi cada cambio que se realice en esta propiedad se podra controlar en la vistas donde se tenga una instanvia de VideoViewModel
    @Published var videosModel: [String] = []
    
    init() {
        videosModel = ["Aprende SwiftUI",
                       "Aprende Xcode",
                       "Aprende Swift"]
    }
    
    func addMoreTopics() {
        videosModel.append("Aprende CI/CD")
        videosModel.append("Aprende Git")
    }
}

#Preview {
    ExampleObservedObjectVSStateObject()
}

/*
 - Parecidos a @State y @Binding, pero se ocupan de manera diferente
 - Se crea una clase aparte con diferentes propiedades y metodos. Estas propiedades se pueden usar en nuestras vistas y cuando cambian la vista se redibuja de esta menera podemos usar la clase en diferentes vistas y todas pueden escuchar en estas propiedades
 -
 */
