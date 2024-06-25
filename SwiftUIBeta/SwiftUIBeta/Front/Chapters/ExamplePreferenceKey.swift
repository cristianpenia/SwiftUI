//
//  ExamplePreferenceKey.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 25/06/24.
//

import SwiftUI

struct CustomTitleKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, 
                       nextValue: () -> String) {
        
        if !value.isEmpty {
            return
        }
        
        value = value + nextValue()
        
        
//        value = value + " " + nextValue()
    }
}

struct CustomNavigationView<Content: View>: View {
    @State private var title: String = "Navigation View"
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .bold()
            GeometryReader { proxy in
                ScrollView {
                    content
                }
            }
        }
        .padding()
        .onPreferenceChange(CustomTitleKey.self, perform: { value in
            print("Value \(value)")
            
            title = value
        })
    }
}

struct ExamplePreferenceKey: View {
    
    var body: some View {
        
        CustomNavigationView {
            
            VStack {
                Text("Sigan a Rufus en todas sus redes sociales")
                    .padding()
//                    .preference(key: CustomTitleKey.self, value: "SwiftRufus 1")
                    .customNavigationTitle(title: "SRufus 1")
                
                Text("Aprende SwiftUI")
                    .padding()
//                    .preference(key: CustomTitleKey.self, value: "SwiftRufus 2")
                    .customNavigationTitle(title: "SwiftRufus 2")
            }
//            .navigationTitle("SwiftBeta")
        }
    }
}

extension View {
    func customNavigationTitle(title: String) -> some View {
        modifier(CustomNavigationTitle(title: title))
    }
}

struct CustomNavigationTitle: ViewModifier {
    
    private var title: String
    
    init(title: String) {
        self.title = title
    }
    func body(content: Content) -> some View {
        content
            .preference(key: CustomTitleKey.self, value: title)
    }
    
}

#Preview {
    ExamplePreferenceKey()
}
