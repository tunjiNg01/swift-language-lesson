//
//  news_appApp.swift
//  news-app
//
//  Created by MACBOOK PRO on 05/04/2023.
//

import SwiftUI

@main
struct news_appApp: App {
    @StateObject var articlBookmarkViewModel = ArticleBookMarkViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(articlBookmarkViewModel)
            
        }
    }
}
