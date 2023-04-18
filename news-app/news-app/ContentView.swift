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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
