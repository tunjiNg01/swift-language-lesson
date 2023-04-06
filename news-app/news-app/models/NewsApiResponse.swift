//
//  NewsApiResponse.swift
//  news-app
//
//  Created by MACBOOK PRO on 05/04/2023.
//

import Foundation

struct NewsApiResponse: Codable {
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
}
