//
//  EmptyPlaceHolderView.swift
//  news-app
//
//  Created by MACBOOK PRO on 18/04/2023.
//

import SwiftUI

struct EmptyPlaceHolderView: View {
    let text: String
    let image: Image?
    var body: some View {
        VStack(spacing: 8){
            Spacer()
            if let image = self.image {
                image
                    .imageScale(.large)
                    .font(.system(size: 52))
            }
            Text(text)
                .font(.subheadline)
            Spacer()
        }
    }
}

struct EmptyPlaceHolderView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyPlaceHolderView(text: "No news found", image: Image(systemName: "newspaper"))
    }
}
