//
//  StockCell.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import UIKit

class StockCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: StockCell.self)
    
    @IBOutlet weak var lblStock: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func showStock(stock: Stock) {
        self.contentView.backgroundColor = UIColor.systemBlue
        lblStock.text = stock.stock
        price.text = String(format: "%.2f", stock.price ?? 0.0) + " USD"
        
    }
}

