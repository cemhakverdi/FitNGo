//
//  ContentView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    
    
    var body: some View {
        
        VStack{
            
            
            TabView(selection: $selection){
                
                MainView()
                    .tabItem {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 40))
                        Text("Calculate")
                        
                    }.tag(1)
                LearnView()
                    .tabItem {
                        Image(systemName: "bolt.heart")
                            .font(.system(size: 40))
                        Text("Learn")
                        
                    }.tag(2)
                
                
            }
            
            .accentColor(.red)
            .onAppear(){
                UITabBar.appearance().barTintColor = .black
                
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
