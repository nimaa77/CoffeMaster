//
//  ContentView.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/4/1401 AP.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    var body: some View {
            OfferPage()
    }
}

//struct Greeting: View {
//    @Binding var name: String
//
//    var body: some View {
//        HStack {
//            TextField("Enter Your Name:", text: $name)
//            Text("Hello \(name)")
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
