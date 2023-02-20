//
//  LearnFromProView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/6/22.
//

import SwiftUI

struct LearnFromProView: View {
    var body: some View {
        SwiftUIWebView(url: URL(string: "https://www.fitness.com/en/workouts"))
            .navigationTitle("Pro Tips")
    }
}

struct LearnFromProView_Previews: PreviewProvider {
    static var previews: some View {
        LearnFromProView()
    }
}
