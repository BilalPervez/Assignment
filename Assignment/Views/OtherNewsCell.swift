//
//  OtherNewsCell.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import UIKit

class OtherNewsCell: UICollectionViewCell {
    
    
    static let reuseIdentifier = String(describing: OtherNewsCell.self)
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    
    func showNews(news: NewsFeed) {
        
        lblTitle.text = news.title ?? ""
        newsImage.sd_setImage(with: URL(string: news.urlToImage ?? ""), placeholderImage: UIImage(named: "placeholder.png"))
        lblDescription.text = news.description ?? ""
        lblDate.text = news.publishedAt ?? "20/05/2022"

    
    }
    
}

