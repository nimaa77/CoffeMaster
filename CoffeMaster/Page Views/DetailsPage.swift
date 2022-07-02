//
//  DetailsPage.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import SwiftUI

struct DetailsPage: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var cartManager: CartManager
    
    @State private var quantity = 1
    
    var product: Product
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .foregroundColor(Color("Primary"))
                .padding(24)
            HStack {
                Text("$ \(product.price, specifier: "%.2f") ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal $\(Double(quantity) * product.price, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                cartManager.add(product: product, quantity: quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
        .navigationTitle("Dummy")
        .toolbar {
            LikeButton(product: product)
        }
    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage(product: Product(id: 1, name: "Dummy Product", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", price: 1.25, image: ""))
            .environmentObject(CartManager())
            .environmentObject(LikeManager())
    }
}
