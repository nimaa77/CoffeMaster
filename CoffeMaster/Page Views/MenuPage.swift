//
//  MenuPage.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    
    @State private var search: String = ""
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(menuManager.menu) { category in
                    if category.filteredItems(search).count > 0 {
                        Text(category.name)
                        .listRowBackground(Color("Background"))
                        .foregroundColor(Color("Secondary"))
                        .padding()
                    }
                    
                    ForEach(category.filteredItems(search)) { item in
                        ZStack {
                            NavigationLink(destination: DetailsPage(product: item)) {
                                EmptyView()
                            }.opacity(0)
                            ProductItem(product: item)
                                .padding(.top)
                                .padding(.leading)
                                .padding(.bottom, 12)

                        }
                        
                    }
                }
            }
            .searchable(text: $search)
            .navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
            .environmentObject(MenuManager())
            .environmentObject(LikeManager())
    }
}
