//
//  OrdersPage.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import SwiftUI

struct OrdersPage: View {
    
    @State private var name: String = ""
    @State private  var phone: String = ""
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationView {
                    if cartManager.cart.count == 0 {
                        Text("Your order is empty")
                            .navigationTitle("Your Order")
                    } else {
                        List {
                            Section("ITEMS") {
                                ForEach(cartManager.cart, id:\.0.id) { item in
                                    OrderItem(item: (product: item.0, quanitity: item.1))
                                }
                            }.listRowBackground(Color("Background"))
                                                
                            Section("YOUR DETAILS") {
                                VStack {
                                    TextField("Your Name", text: $name)
                                        .textFieldStyle(.roundedBorder)
                                    Spacer().frame(height: 20)
                                    TextField("Your Phone #", text: $phone)
                                        .keyboardType(.phonePad)
                                        .textFieldStyle(.roundedBorder)
                                }.padding(.top)
                                 .padding(.bottom)
                            }.listRowBackground(Color("Background"))
                            
                            Section() {
                                HStack {
                                    Spacer()
                                    Text("Total")
//                                    Spacer()
//                                    Text("$ \(cartManager.total(), specifier: "%.2f")")
//                                        .bold()
                                    Spacer()
                                }
                            }.listRowBackground(Color.clear)
                            
                            Section {
                                HStack {
                                    Spacer()
                                    Button("Place Order") {
                                        //TODO: Validation
                                    }
                                        .padding()
                                        .frame(width: 250.0)
                                        .background(Color("Alternative2"))
                                        .foregroundColor(Color.black)
                                        .cornerRadius(25)
                                        
                                    Spacer()
                                }
                            }.listRowBackground(Color.clear)
                        }
                        .listSectionSeparatorTint(Color("AccentColor"))
                        .listStyle(.insetGrouped)
                        .navigationTitle("Your Order")
                    }
        }
    }
}

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        OrdersPage()
            .environmentObject(CartManager())
    }
}
