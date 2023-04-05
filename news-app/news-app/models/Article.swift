//
//  Article.swift
//  news-app
//
//  Created by MACBOOK PRO on 05/04/2023.
//

import Foundation

struct Article {
    let source: Source
    let title: String?
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
    
    var titleText: String {
        title ?? ""
    }
    
    var descriptionText: String {
        description ?? ""
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


extension Article: Codable {
    func encode(to encoder: Encoder) throws {
        <#code#>
    }
}

extension Article: Equatable {}

extension Article: Identifiable{
    var id: String { url }
}

extension Article {
    static var previewDataUrl: [Article] {
        let previewDataUrl = Bundle.main.url(forResource: "news", withExtension: "json")!
        let data = try! Data(contentsOf: previewDataUrl)
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        let apiResponse = try! jsonDecoder.decode(NewApiResponse.self, from: data)
        return apiResponse.article ?? []
        
    }
}



struct Source {
    let name: String
}

extension Source: Equatable {}
extension Source: Identifiable {
    var id: String { name }
}
