//
//  MenuPage.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailsPage()
                        } label: {
                            ProductItem(product: product)
                        }
                    }
                }

            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
            .environmentObject(MenuManager())
    }
}