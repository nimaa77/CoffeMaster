//
//  LikeButton.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/12/1401 AP.
//

import SwiftUI

struct LikeButton: View {
    @EnvironmentObject var likeManager: LikeManager
    var product: Product
    
    var body: some View {
        let isLiked = likeManager.isLiked(product: product)
        
        Image(systemName: isLiked ? "heart.fill" : "heart")
            .padding()
            .foregroundColor(Color("Secondary"))
            .onTapGesture {
                likeManager.toggle(product: product)
            }
            
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(
            id: 1,
            name: "Dummy",
            description: "",
            price: 1.25,
            image: ""
        )
        LikeButton(product: product)
            .environmentObject(LikeManager())
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
    }
}
