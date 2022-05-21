//
//  NewsCell.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    
    static let reuseIdentifier = String(describing: NewsCell.self)
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    
    func showStock(news: NewsFeed) {
        
        
    }
    
}
