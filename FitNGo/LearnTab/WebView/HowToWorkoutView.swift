//
//  HowToWorkoutView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/6/22.
//

import SwiftUI

struct HowToWorkoutView: View {
    var body: some View {
        SwiftUIWebView(url: URL(string: "https://musclewiki.com"))
            .navigationTitle("How to workout?")
    }
}

struct HowToWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        HowToWorkoutView()
    }
}
