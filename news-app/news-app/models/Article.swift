//
//  Article.swift
//  news-app
//
//  Created by MACBOOK PRO on 05/04/2023.
//

import Foundation

fileprivate let relativeDateFormatter = RelativeDateTimeFormatter()

struct Article {
    let id = UUID()
    let source: Source
    let url: String
    let title: String
    let publishedAt: Date
    
    
    
    let urlToImage: String?
    let description: String?
    let author: String?
    
    enum CodingKeys: String, CodingKey {
          case source
          case title
          case url
          case publishedAt
          case author
          case description
          case urlToImage
      }
    
    var authorText: String {
        author ?? ""
    }
    
    var descriptionText: String {
        description ?? ""
    }
    
    var captionText: String {
         "\(source.name) ․ \(relativeDateFormatter.localizedString(for: publishedAt, relativeTo: Date()))"
     }
    
    var articleUrl: URL {
        URL(string: url)!
    }
    
    var imageUrl: URL? {
        guard let urlToImage = urlToImage else {
            return nil
        }
        
        return URL(string: urlToImage)
    }
    
}


extension Article: Codable {}

extension Article: Equatable {}

extension Article: Identifiable{}

extension Article {
    static var previewData: [Article] {
        
            let previewDataURL = Bundle.main.url(forResource: "news", withExtension: "json")!
        
            let data = try! Data(contentsOf: previewDataURL)
            
            let jsonDecoder = JSONDecoder()
        
            jsonDecoder.dateDecodingStrategy = .iso8601
            
        let apiResponse = try! jsonDecoder.decode(NewsApiResponse.self , from: data)
        // print(apiResponse)
            return apiResponse.articles ?? []
        }
}



struct Source {
    let name: String
}

extension Source: Equatable {}
extension Source: Codable {}
