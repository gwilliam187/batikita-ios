//
//  ShoppingCartView.swift
//  Batikita
//
//  Created by George on 6/12/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI

struct ShoppingCartView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List(userData.shoppingCart) { item in
                ShoppingCartRow(item: item)
            }
                
            .navigationBarTitle(Text("Shopping Cart"))
        }
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
