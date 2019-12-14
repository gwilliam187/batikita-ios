//
//  ContentView.swift
//  Batikita
//
//  Created by George on 1/11/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BatikListPage()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
            
            ShoppingCartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                    }
                }
         
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
