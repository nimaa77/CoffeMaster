//
//  OrderItem.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import SwiftUI

struct OrderItem: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var item: (product: Product, quanitity: Int)
    var body: some View {
        HStack {
            Text("\(item.quanitity)x")
            Text(item.product.name)
            Spacer()
            Text("\(Double(item.quanitity) * item.product.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("Secondary"))
                .onTapGesture {
                    cartManager.remove(product: item.product)
                }
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (product:
                            Product(
                                id: 1,
                                name: "Dummy",
                                description: "Description",
                                price: 1.25,
                                image: ""
                            ),
                         quanitity: 1
                        ))
        .environmentObject(CartManager())
        .padding()
    }
}
