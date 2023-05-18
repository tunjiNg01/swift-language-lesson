//
//  ArticleViewModel.swift
//  news-app
//
//  Created by MACBOOK PRO on 17/04/2023.
//

import SwiftUI


enum DataFetching<T>{
    case empty
    case success(T)
    case failure(Error)
}

struct FetchTaskToken: Equatable {
    var category: Category
    var token: Date
}



@MainActor
class ArticleNewsViewModel: ObservableObject {
    @Published var phase = DataFetching<[Article]>.empty
    @Published var fetchTaskToken: FetchTaskToken
    private let newsAPI = NewsApi.shared
    
    init(articles: [Article]? = nil, selectedCategory: Category = .general){
        
        if let articles = articles {
            self.phase = .success(articles)
        }else{
            self.phase = .empty
        }
        
        self.fetchTaskToken = FetchTaskToken(category: selectedCategory, token: Date())
    }
    
    func loadArticle() async {
        phase = .success(Article.previewData)
        //phase = .empty
        //if Task.isCancelled { return }
        //do{
         //   let articles = try await newsAPI.fetch(from: fetchTaskToken.category)
          //  if Task.isCancelled { return }
         //   phase = .success(articles)
       // }catch{
        //    if Task.isCancelled { return }
         //   phase = .failure(error)
        //}
        
    }
}
