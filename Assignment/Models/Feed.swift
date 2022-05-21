//
//  Feed.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import Foundation
struct Feed: Hashable {
  
    let stock: Stock?
    let news: NewsFeed?
    let otherNews: NewsFeed?
    
    
    let identifier = UUID().uuidString
    
    
    init(stock: Stock? = nil, news: NewsFeed? = nil, otherNews: NewsFeed? = nil) {
        self.stock = stock
        self.news = news
        self.otherNews = otherNews
    }
    
    func hash(int hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func == (lhs: Feed, rhs: Feed) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
}
