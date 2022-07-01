//
//  MenuManager.swift
//  CoffeMaster
//
//  Created by Nima Arefi on 4/10/1401 AP.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject  {
    @Published var menu: [Category] = []

    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    self.menu = menuFromNetwork
                }
            }
    }
}
