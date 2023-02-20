//
//  CaloriesView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/6/22.
//

import SwiftUI

struct CaloriesView: View {
    var body: some View {
        SwiftUIWebView(url: URL(string: "https://www.calorieking.com/us/en/"))
            .navigationTitle("How much calories?")
    }
}

struct CaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
    }
}
