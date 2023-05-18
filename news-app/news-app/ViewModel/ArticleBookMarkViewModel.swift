//
//  ArticleBookMarkViewModel.swift
//  news-app
//
//  Created by MACBOOK PRO on 18/05/2023.
//

import Foundation

@MainActor
class ArticleBookMarkViewModel: ObservableObject {
    @Published private(set) var bookmarks: [Article] = []
    
    func isBookmark(for article: Article) -> Bool {
        bookmarks.first { article.id == $0.id } != nil
    }
    
    func addToBookmark(article: Article){
        guard !isBookmark(for: article) else {
            return
        }
        
        bookmarks.insert(article, at: 0)
    }
    
    func removeFromBookmarks(for article: Article){
        guard let index = bookmarks.firstIndex(where: {$0.id == article.id}) else {
            return
        }
        
        bookmarks.remove(at: index)
    }
}
