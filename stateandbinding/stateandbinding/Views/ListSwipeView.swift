//
//  ListSwipeView.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 19/04/2023.
//

import SwiftUI

struct ListSwipeView: View {
    var message: [Message]
    var body: some View {
        List {
            ForEach(message) { message in
                MessageCell(message: message)
                    .swipeActions(edge: .leading){
                        Button { toggle() }
                                     label: {
                                            if message.isUnread {
                                                Label("Read", systemImage: "envelope.open")
                                            } else {
                                                Label("Unread", systemImage: "envelope.badge")
                                            }
                                        }
                                     .tint(.blue)
                    }
                    .swipeActions(edge: .trailing) {
                                   Button(role: .destructive) {
                                      toggle()
                                   } label: {
                                       Label("Delete", systemImage: "trash")
                                   }
                                   Button { toggle() } label: {
                                       Label("Flag", systemImage: "flag")
                                   }
                                   .tint(.orange)
                               }
            }
            .listRowInsets(.none)
        }
    }
    private func toggle(){
        
    }
}

struct ListSwipeView_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeView(message: messageArray)
    }
}
