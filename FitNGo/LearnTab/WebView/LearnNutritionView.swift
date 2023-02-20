//
//  LearnNutritionView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/6/22.
//

import SwiftUI

struct LearnNutritionView: View {
    var body: some View {
        SwiftUIWebView(url: URL(string: "https://www.bodybuilding.com/category/nutrition"))
            .navigationTitle("Nutrition")
    }
}

struct LearnNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        LearnNutritionView()
    }
}
