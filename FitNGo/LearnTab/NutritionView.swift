//
//  NutritionView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/4/22.
//

import SwiftUI

struct NutritionView: View {
    
    var body: some View {
        
        NavigationView {
            List {
                
                NavigationLink(destination: GetRecipesView()) {
                    HStack {
                        Image(systemName: "star.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.red, .black)
                        Text("Get Recipes")
                            .padding()
                            .font(.title2)
                    }
                }
                
                
                
                NavigationLink(destination: CaloriesView())
                {
                    HStack {
                        Image(systemName: "questionmark.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.red, .black)
                        Text("How Much Calories?")
                            .padding()
                            .font(.title2)
                    }
                }
                
                
                
                NavigationLink(destination: LearnNutritionView())
                {
                    HStack {
                        Image(systemName: "books.vertical.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.red, .black)
                        Text("Learn Nutrition")
                            .padding()
                            .font(.title2)
                    }
                }
            }
            .navigationTitle("More about nutrition")
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
    }
}
