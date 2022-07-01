//
//  OfferPage.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/6/1401 AP.
//

import SwiftUI

struct OfferPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffe", description: "10% Off until 10 AM")
                Offer(title: "Welcome Gift", description: "35% Off for first order, buy one take 2")
                Offer(title: "Welcome Gift", description: "35% Off for first order, buy one take 2")
                Offer(title: "Welcome Gift", description: "35% Off for first order, buy one take 2")
            }.navigationTitle("Offers")
        }
    }
}

struct OfferPage_Previews: PreviewProvider {
    static var previews: some View {
        OfferPage()
    }
}
