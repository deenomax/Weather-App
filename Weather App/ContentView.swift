//
//  ContentView.swift
//  Weather App
//
//  Created by Londell Aberdeen on 1/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ForecastView()
                .tabItem {
                    VStack{
                        Image(systemName: "sun.max.circle")
                        Text("forecast")
                    }
                }
            
            Image(systemName: "globe")
                .tabItem {
                    VStack{
                        Image(systemName: "globe")
                        Text("Maps")
                    }
                }
            
            Image(systemName: "gear.circle")
                .tabItem {
                    VStack{
                        Image(systemName: "gear.circle")
                        Text("Settings")
                    }
                    
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
