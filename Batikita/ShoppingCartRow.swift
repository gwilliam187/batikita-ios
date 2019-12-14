//
//  ShoppingCartRow.swift
//  Batikita
//
//  Created by George on 6/12/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI
import URLImage

struct ShoppingCartRow: View {
    @EnvironmentObject var userData: UserData
    @State var quantity: String
    var item: ShoppingCartItem
    
    init(item: ShoppingCartItem) {
        self.item = item
        _quantity = State(initialValue: String(item.quantity))
    }
    
    var body: some View {
        VStack {
            HStack {
                URLImage(URL(string: "http://localhost:3000/\(item.batik.imgUrl)")!, delay: 0.25) { proxy in
                    proxy.image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .cornerRadius(16)
                    
                }
                
                VStack(alignment: .leading) {
                    Text(item.batik.name)
                        .font(.title)
                    Text("Rp \(item.batik.price)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                    
                TextField("Qty", text: $quantity, onEditingChanged: { (changed) in
                    print(self.quantity)
                    
                    guard let index = self.userData.shoppingCart.firstIndex(where: { $0.id == self.item.batik.id }) else { return }
                    self.userData.shoppingCart[index].quantity = Int(self.quantity)!
                    
                    print(self.userData.shoppingCart[index])
                    
                })
                    
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .frame(width: 50)
                .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            
            HStack {
                Spacer()
                
                Button(action: {
                    print("clicked")
                    self.userData.shoppingCart.removeAll(where: { $0.id == self.item.batik.id })
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                        Text("Remove")
                            .foregroundColor(.red)
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
}

struct ShoppingCartRow_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartRow(item: ShoppingCartItem(batik: Batik(id: 1, name: "Batik Test", price: 1000000, imgUrl: "asdf"), quantity: 1))
    }
}
