//
//  CoffeMasterApp.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/4/1401 AP.
//

import SwiftUI

@main
struct CoffeMasterApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    var likeManager = LikeManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
                .environmentObject(likeManager)
        }
    }
}
