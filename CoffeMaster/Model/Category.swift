//
//  Category.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product] = []
    var id: String {
        return self.name
    }
    
    func filteredItems(_ text: String) -> [Product] {
        if text.count > 0 {
            return products.filter({ $0.name.contains(text) })
        }
        return products
    }
}
