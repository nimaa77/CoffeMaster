//
//  ContentView.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/4/1401 AP.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        TabView {
            MenuPage()
                .tabItem() {
                    Image(systemName: "cup.and.saucer")
                    Text("Home")
                }
            OfferPage()
                .tabItem() {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem() {
                    Image(systemName: "cart")
                    Text("Order")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem() {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(CartManager())
                .environmentObject(MenuManager())
                .environmentObject(LikeManager()) 
            
        }
    }
}
