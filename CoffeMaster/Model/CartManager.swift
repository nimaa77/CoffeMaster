//
//  CartManager.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart : [(Product, Int)] = []
    
    func add(product: Product, quantity: Int) {
        self.cart.append((product, quantity))
    }
    
    func remove(product: Product) {
        self.cart.removeAll{ itemInCart in
            return itemInCart.0.id == product.id
        }
    }
    
    func total() -> Double {
        cart.reduce(0, { x, y in
            x + (y.0.price * Double(y.1))
        })
    }
    
}

