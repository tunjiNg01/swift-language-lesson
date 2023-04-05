//
//  NewsApiResponse.swift
//  news-app
//
//  Created by MACBOOK PRO on 05/04/2023.
//

import Foundation

struct NewApiResponse: Codable {
    let status: String
    let totalResults: String?
    let article: [Article]?
    
    let code: String?
    let message: String?
}
