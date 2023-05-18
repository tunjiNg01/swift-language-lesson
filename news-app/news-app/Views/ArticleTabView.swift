//
//  ArticleTabView.swift
//  news-app
//
//  Created by MACBOOK PRO on 18/04/2023.
//

import SwiftUI

struct ArticleTabView: View {
    
    @StateObject var articleNewsVM = ArticleNewsViewModel()
    
    var body: some View {
        NavigationView{
            ArticleListView(articles: articles)
                .overlay(overlayView)
                .task(id: articleNewsVM.fetchTaskToken, loadNews)
                .refreshable(action: refreshTask)
                .navigationTitle(articleNewsVM.fetchTaskToken.category.text)
                .navigationBarItems( trailing: menu)
        }
    }
    
    
    @ViewBuilder
    private var overlayView: some View {
            switch articleNewsVM.phase{
                
            case .empty: ProgressView()
            case .success(let articles) where articles.isEmpty:
                EmptyPlaceHolderView(text: "No articles", image: Image(systemName: "memories"))
            case .failure(let error):  RetryView(text: "\(error.localizedDescription)", retryAction: refreshTask)
                // TODO: program retry action
            default:
                EmptyView()
            
        }
    }
    
    private var articles: [Article] {
        
        if case let .success(articles) = articleNewsVM.phase {
            
            return articles
            
        }else{
            
            return []
            
        }
    }
    
    private func loadNews() async{
        
          await  articleNewsVM.loadArticle()
        
    }
    
    private func refreshTask(){
        articleNewsVM.fetchTaskToken = FetchTaskToken(category: articleNewsVM.fetchTaskToken.category, token: Date())
    }
    
    private var menu: some View {
        Menu {
            Picker("Category", selection: $articleNewsVM.fetchTaskToken.category){
                ForEach(Category.allCases){
                    Text($0.text).tag($0)
                }
            }
        }label: {
            Image(systemName: "fiberchannel")
                .imageScale(.large)
        }
    }
}

struct ArticleTabView_Previews: PreviewProvider {
    @StateObject static var articlBookmarkViewModel = ArticleBookMarkViewModel()
    static var previews: some View {
        ArticleTabView(articleNewsVM: ArticleNewsViewModel(articles: Article.previewData))
            .environmentObject(articlBookmarkViewModel)
    }
}
