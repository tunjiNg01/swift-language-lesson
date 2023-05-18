//
//  ArticleBookMarkTabView.swift
//  news-app
//
//  Created by MACBOOK PRO on 18/05/2023.
//

import SwiftUI

struct ArticleBookMarkTabView: View {
    @EnvironmentObject var articleBookmarkVm: ArticleBookMarkViewModel
    var body: some View {
        NavigationView{
            ArticleListView(articles: articleBookmarkVm.bookmarks)
                .overlay(overLayView(isEmpty: articleBookmarkVm.bookmarks.isEmpty))
                .navigationTitle("Saved Article")
        }
    }
    
    @ViewBuilder
    func overLayView(isEmpty: Bool) -> some View {
        if isEmpty {
            EmptyPlaceHolderView(text: "No saved article", image: Image(systemName: "bookmark"))
        }
    }
}

struct ArticleBookMarkTabView_Previews: PreviewProvider {
    @StateObject static var articlBookmarkViewModel = ArticleBookMarkViewModel()
    static var previews: some View {
        ArticleBookMarkTabView()
            .environmentObject(articlBookmarkViewModel)
    }
}
