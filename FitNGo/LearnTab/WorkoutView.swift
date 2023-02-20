//
//  WorkoutView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/4/22.
//

import SwiftUI

struct WorkoutView: View {
    
    var body: some View {
        
        NavigationView {
            List {
                NavigationLink(destination: HowToWorkoutView()) {
                    HStack {
                        Image(systemName: "bolt.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.red, .black)
                        Text("How to Workout?")
                            .padding()
                            .font(.title2)
                    }
                }
                
                
                
                NavigationLink(destination: ReadArticlesView())
                {
                    HStack {
                        Image(systemName: "gear.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.red, .black)
                        Text("Read Articles")
                            .padding()
                            .font(.title2)
                    }
                }
                
                
                
                NavigationLink(destination: LearnFromProView())
                {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.red, .black)
                        Text("Learn From Pro")
                            .padding()
                            .font(.title2)
                    }
                }
            }
            .navigationTitle("More about workout")
        }
        
        
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}


