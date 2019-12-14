//
//  UserData.swift
//  Batikita
//
//  Created by George on 6/12/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import Foundation
import Combine

class UserData: ObservableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    @Published var shoppingCart = [ShoppingCartItem]()
    
}

struct ShoppingCartItem: Identifiable {
    var id: Int
    var batik: Batik
    var quantity: Int
    
    init(batik: Batik, quantity: Int) {
        self.id = batik.id
        self.batik = batik
        self.quantity = quantity
    }
}
