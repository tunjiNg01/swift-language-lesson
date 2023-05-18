//
//  ArticleRowView.swift
//  news-app
//
//  Created by MACBOOK PRO on 06/04/2023.
//

import SwiftUI

struct ArticleRowView: View {
    @EnvironmentObject var articleBookmarkVM: ArticleBookMarkViewModel
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
                        toggleBookmark(for: article)
                    } label: {
                        Image(systemName: articleBookmarkVM.isBookmark(for: article) ? "bookmark.fill" : "bookmark")
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
    
    private func toggleBookmark(for article: Article) {
        if articleBookmarkVM.isBookmark(for: article){
            articleBookmarkVM.removeFromBookmarks(for: article)
        }else{
            articleBookmarkVM.addToBookmark(article: article)
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
    @StateObject static var articlBookmarkViewModel = ArticleBookMarkViewModel()
    static var previews: some View {
        NavigationView{
            List {
                ArticleRowView(article: .previewData[0]).environmentObject(articlBookmarkViewModel)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
        }
     
        
    }
}
