//
//  ArticleRowView.swift
//  news-app
//
//  Created by MACBOOK PRO on 06/04/2023.
//

import SwiftUI

struct ArticleRowView: View {
    let article: Article
    var body: some View {
        VStackLayout(alignment: .leading, spacing: 16){
            AsyncImage(url: article.imageUrl){phase in
                switch phase {
                case .empty:
                    HStack{
                        Spacer()
                         ProgressView()
                        Spacer()
                    }
                    
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                case .failure:
                    HStack{
                        Spacer()
                        Image(systemName: "photo")
                            .font(.largeTitle)
                        Spacer()
                    }
                  
                    
                default:
                    Image(systemName: "photo")
                }
            }
            .frame(minHeight: 200, maxHeight: 300)
            .background(Color.gray.opacity(0.3))
            .clipped()
            
            VStack(alignment: .leading, spacing: 8){
                Text(article.title)
                    .font(.headline)
                    .lineLimit(3)
                Text(article.descriptionText)
                    .font(.subheadline)
                    .lineLimit(2)
                HStack{
                    Text(article.captionText)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark")
                            .font(.body)
                    }
                    .buttonStyle(.bordered)
                    Button {
                        presentShareSheet(url: article.articleUrl)
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.body)
                    }
                    .buttonStyle(.bordered)
                }
              
            }
            .padding([.horizontal, .bottom])
        }
    }
}

extension View {
    func presentShareSheet(url: URL){
        let uiActivityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?
            .keyWindow?
            .rootViewController?.present(uiActivityVC, animated: true)
    }
}

struct ArticleRowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            List {
                ArticleRowView(article: .previewData[0])
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
        }
     
        
    }
}
