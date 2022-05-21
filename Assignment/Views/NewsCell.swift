//
//  NewsCell.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import UIKit
import SDWebImage
class NewsCell: UICollectionViewCell {
    
    
    static let reuseIdentifier = String(describing: NewsCell.self)
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    
    func showNews(news: NewsFeed) {
        
        lblTitle.text = news.title ?? ""
        
        newsImage.sd_setImage(with: URL(string: news.urlToImage ?? ""), placeholderImage: UIImage(named: "placeholder.png"))

     
    
    }
    
}
