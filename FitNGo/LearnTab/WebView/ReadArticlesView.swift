//
//  ReadArticlesView.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/6/22.
//

import SwiftUI

struct ReadArticlesView: View {
    var body: some View {
        SwiftUIWebView(url: URL(string: "https://www.fitness.com/en/articles"))
            .navigationTitle("Recent Articles")
    }
}

struct ReadArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ReadArticlesView()
    }
}
