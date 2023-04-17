//
//  ArticleViewModel.swift
//  news-app
//
//  Created by MACBOOK PRO on 17/04/2023.
//

import SwiftUI


enum DataFetching<T>{
    case empty;
    case success(T);
    case failure(Error);
}


@MainActor
class ArticleNewsViewModel: ObservableObject {
    @Published var phase = DataFetching<[Article]>.empty
    @Published var selectedCategory: Category
    private let newsAPI = NewsApi.shared
    
    init(articles: [Article]? = nil, selectedCategory: Category = .generals){
        
        if let articles = articles {
            self.phase = .success(articles)
        }else{
            self.phase = .empty
        }
        
        self.selectedCategory = selectedCategory
    }
    
    func loadArticle() async {
        phase = .empty
        do{
            let articles = try await newsAPI.fetch(from: selectedCategory)
            phase = .success(articles)
        }catch{
            phase = .failure(error)
        }
        
    }
}
