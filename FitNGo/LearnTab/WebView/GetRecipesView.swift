//
//  GetRecipesView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/6/22.
//

import SwiftUI

struct GetRecipesView: View {
    var body: some View {
        SwiftUIWebView(url: URL(string: "https://healthyfitnessmeals.com"))
            .navigationTitle("Recipes")
    }
}


struct GetRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        GetRecipesView()
    }
}
