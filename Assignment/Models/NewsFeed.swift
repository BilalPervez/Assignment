//
//  NewsFeed.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import Foundation
struct NewsFeed: Hashable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
    
    
    let identifier = UUID().uuidString
    
    
    init(author: String? = nil, title: String? = nil, description: String? = nil, url: String? = nil, urlToImage: String? = nil, publishedAt: String? = nil, content: String? = nil)
    {
        self.author = author
        self.title = title
        self.description = description
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
        
        
    }
    
    func hash(int hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func == (lhs: NewsFeed, rhs: NewsFeed) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
}
