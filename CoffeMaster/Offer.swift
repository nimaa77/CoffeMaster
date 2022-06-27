//
//  Offer.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/6/1401 AP.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        VStack {
            Text(title)
                .padding()
                .font(.title)
                .background(Color("CardBackground"))
            Text(description)
                .padding()
                .background(Color("CardBackground"))
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "My offer", description: "this is the description")
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
