//
//  NewsApi.swift
//  news-app
//
//  Created by MACBOOK PRO on 17/04/2023.
//

import Foundation


struct NewsApi {
    static let shared = NewsApi()
    
    private init(){}
    private let apiKey = "c140cac04c1a4ea7add17febb412186a"
    private let session = URLSession.shared
    private let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
    
    func fetch(from category: Category ) async throws -> [Article]{
        let url = generateUrl(from: category)
        let (data, response) = try await session.data(from: url)
        guard let response = response as? HTTPURLResponse else {
            throw generateError(description: "Bad request")
        }
        
        switch response.statusCode {
        case (200...299), (400...499):
            let apiResponse = try jsonDecoder.decode(NewsApiResponse.self, from: data)
            
            if apiResponse.status == "ok"{
                return apiResponse.articles ?? []
            }else{ 
                throw generateError(description: "an error occured")
            }
        default:
            throw generateError(description: "A server error occurred")
        }
    }
    
    private func generateError(code: Int = -1, description: String) -> Error{
        NSError(domain: "NewsApi", code: code, userInfo: [NSLocalizedDescriptionKey: description])
    }
    
    private func generateUrl(from category: Category) -> URL {
        var url = "https://newsapi.org/v2/everything?"
        url += "apiKey=\(apiKey)"
        url += "&language=en"
        url += "&category=\(category.rawValue)"
        
        return URL(string: url)!
    }
    
}
