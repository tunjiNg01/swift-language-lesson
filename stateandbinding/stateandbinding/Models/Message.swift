//
//  Message.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 19/04/2023.
//

import Foundation


struct Message: Identifiable {
    var id = UUID()
    var name: String
    var message: String
    var isUnread: Bool
    
}


var messageArray = [
             Message(name: "John Stone", message: "Hello there my name is john stone I played for city", isUnread: true),
             Message(name: "Granit Xhaka", message: "Hello there I am Granit xhaka I played for the current premier champion arsenal", isUnread: false)
  ]
