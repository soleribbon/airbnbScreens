//
//  ContentView.swift
//  airbnbScreens
//
//  Created by Ravi  on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    init(){
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(.red)
    }

    var body: some View {
        TabView {
            TripsView_()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            SampleView()
                .tabItem {
                    Label("Wishlists", systemImage: "suit.heart").environment(\.symbolVariants, .none)
                }
            SampleView()
                .tabItem {
                    
                    Text("Trips")
                    Image("airbnbIcon")
                }
            SampleView()
                .tabItem {
                    Label("Inbox", systemImage: "bubble.middle.bottom")
                        .environment(\.symbolVariants, .none)
                }
            SampleView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                        .environment(\.symbolVariants, .none)
                }


           
        }.accentColor(.red) //tabview end
        
        
        
        
    }
}


struct SampleView: View {
    var body: some View {
        Text("Sample View")
            .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
