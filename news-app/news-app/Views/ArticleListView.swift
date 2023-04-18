//
//  ArticleListView.swift
//  news-app
//
//  Created by MACBOOK PRO on 08/04/2023.
//

import SwiftUI

struct ArticleListView: View {
    let articles: [Article]
    @State private var selectedArticle: Article?
    var body: some View {
        List{
            ForEach(articles) { article in
                ArticleRowView(article: article)
                    .onTapGesture {
                        selectedArticle = article
                    }
            }
            .listRowSeparator(.hidden)
            .listRowInsets(.init(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0  )))
        }
        //.edgesIgnoringSafeArea(.top)
        .listStyle(.plain)
        .sheet(item: $selectedArticle){
            SafariView(url: $0.articleUrl)
                .edgesIgnoringSafeArea(.bottom)
        }
        
    }
}



struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ArticleListView(articles: Article.previewData)
        }
   
    }
}
