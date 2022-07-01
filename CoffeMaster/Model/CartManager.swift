//
//  CartManager.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart : [(Product, Int)] = []
}
