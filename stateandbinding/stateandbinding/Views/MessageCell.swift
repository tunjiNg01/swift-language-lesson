//
//  MessageCell.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 19/04/2023.
//

import SwiftUI

struct MessageCell: View {
    var message: Message
    var body: some View {
        VStack(alignment: .leading, spacing: 8 ){
            Text(message.name)
                .font(.headline)
            Text(message.message)
                .font(.subheadline)
        }
        
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell(message: Message(name: "Granit Xhaka", message: "Hello there I am Granit xhaka I played for the current premier champion arsenal", isUnread: true))
    }
}
