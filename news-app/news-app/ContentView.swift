//
//  ContentView.swift
//  news-app
//
//  Created by MACBOOK PRO on 05/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ArticleTabView()
                .tabItem{
                    Label("News", systemImage: "newspaper")
                }
            ArticleBookMarkTabView()
                .tabItem{
                    Label("Saved", systemImage: "bookmark")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @StateObject static var articlBookmarkViewModel = ArticleBookMarkViewModel()
    static var previews: some View {
        ContentView()
            .environmentObject(articlBookmarkViewModel)
        
    }
}
