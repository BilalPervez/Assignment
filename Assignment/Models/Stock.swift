//
//  Stock.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import Foundation
struct Stock: Hashable {
    let stock: String?
    let price: Double?
    
    
    let identifier = UUID().uuidString
    
    
    init(stock: String? = nil, price: Double? = nil) {
        self.stock = stock
        self.price = price
    }
    
    func hash(int hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func == (lhs: Stock, rhs: Stock) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
}
