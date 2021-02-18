//
//  ContentView.swift
//  PageTabViewBug
//
//  Created by Rajiv on 18/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ImageComponent(name: "jupiter")
                .tabItem {
                    Label("Jupiter", systemImage: "circle.fill")
                }
            ImageComponent(name: "saturn")
                .tabItem {
                    Label("Saturn", systemImage: "circle.fill")
                }
            ImageComponent(name: "neptun")
                .tabItem {
                    Label("Neptun", systemImage: "circle.fill")
                }
            ImageComponent(name: "uranus")
                .tabItem {
                    Label("Uranus", systemImage: "circle.fill")
                }
            ImageComponent(name: "pluto")
                .tabItem {
                    Label("Pluto", systemImage: "circle.fill")
                }
        }
        // TODO: UNCOMMMENT TO REPRODUCE THE MEMORY ISSUE
//        .tabViewStyle(PageTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
