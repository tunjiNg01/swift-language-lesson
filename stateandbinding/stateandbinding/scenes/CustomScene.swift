//
//  CustomScene.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 05/04/2023.
//

import SwiftUI

struct CustomScene: Scene {
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene{
        WindowGroup("Title"){
            TabView{
                ContentView()
                    .tabItem{
                        Label("Book", systemImage: "book")
                    }
                SettingView()
                    .tabItem{
                        Label("Settings", systemImage: "square.and.arrow.up")
                    }
            }
        }
        //.backgroundTask(<#T##task: BackgroundTask<Sendable, Sendable>##BackgroundTask<Sendable, Sendable>#>, action: <#T##(Sendable) async -> Sendable#>)
        //.onChange(of: <#T##Equatable#>, perform: <#T##(Equatable) -> Void##(Equatable) -> Void##(_ newValue: Equatable) -> Void#>)
        
    }
    
   
}


