//
//  LinkManager.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/12/1401 AP.
//

import Foundation

class LikeManager: ObservableObject {
    @Published var likes: [Int]
    
    static private let key = "likes"
    private var storage = UserDefaults.standard
    
    
    init () {
        self.likes = storage.array(forKey: LikeManager.key) as? [Int] ?? []
    }
    
    func isLiked(product: Product) -> Bool {
        likes.contains(where: { product.id == $0 })
    }
    
    func toggle(product: Product) {
        let isInList = isLiked(product: product)
        
        if isInList {
            likes.removeAll { $0 == product.id }
        } else {
            likes.append(product.id)
        }
        
        storage.set(likes, forKey: LikeManager.key)
    }
}
