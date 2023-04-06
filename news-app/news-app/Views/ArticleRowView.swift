//
//  ArticleRowView.swift
//  news-app
//
//  Created by MACBOOK PRO on 06/04/2023.
//

import SwiftUI

struct ArticleRowView: View {
    let article: Article
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ArticleRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ArticleRowView(article: .previewData[0])
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
        .listStyle(.plain)
        
    }
}
