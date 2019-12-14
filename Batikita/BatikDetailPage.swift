//
//  BatikDetailPage.swift
//  Batikita
//
//  Created by George on 24/11/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI
import Combine
import URLImage

struct BatikDetailPage: View {
    @EnvironmentObject var userData: UserData
    var batik: Batik
    var currFormat: CurrencyFormatter?
    
    var body: some View {
        ScrollView {
            VStack {
//                Image("batik_parang")
//                    .resizable()
//                    .frame(height: 300)
//                    .aspectRatio(contentMode: .fill)
                
                URLImage(URL(string: "http://localhost:3000/\(batik.imgUrl)")!, delay: 0.25) { proxy in
                    proxy.image
                        .resizable()
                        .frame(height: 300)
                        .aspectRatio(contentMode: .fill)
                    
                }
                
                Text(batik.name)
                    .font(.title)
                    .fontWeight(.black)
                
                NavigationLink(destination: BatikDetailProcessView()) {
                    Text("See Process")
                        .foregroundColor(Color.blue)
                }
                
                
                HStack {
                    Image("batik_artist")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 80)
                        .clipShape(Circle())
                        .shadow(radius: 4, x: 2, y: 2)
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    
                    VStack(alignment: .leading) {
                        Text("By Gramma")
                            .fontWeight(.bold)
                        Text("Gramma created this batik, issa very good batik")
                            .font(.system(size: 12))
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity)
                
                VStack(spacing: 0) {
                    HStack {
                        Image("batik_1")
                            .resizable()
                            .frame(width: 160, height: 80)
                        VStack(alignment: .leading) {
                            Text("Filosofi Solo")
                                .fontWeight(.bold)
                            
                            Text("Gramma tells her story through her batik pattern")
                                .font(.system(size: 12))
                                .lineLimit(3)
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .trailing) {
                            Text("Nyanting itu asik")
                                .fontWeight(.bold)
                            Text("Yuk bantu nenek nak, nenek perlu babu canting nak")
                                .font(.system(size: 12))
                                .multilineTextAlignment(.trailing)
                                .lineLimit(3)
                                
                        }
                        
                        Image("batik_2")
                            .resizable()
                            .frame(width: 160, height: 80)
                    }
                        
                    HStack {
                        Image("batik_3")
                            .resizable()
                            .frame(width: 160, height: 80)
                        VStack(alignment: .leading) {
                            Text("Pewarna Alami")
                                .fontWeight(.bold)
                            Text("Menggunakan pewarna alami untuk sustainability")
                                .font(.system(size: 12))
                                .lineLimit(3)
                        }
                    }
                }
                .padding()
                
                VStack {
                    Text("Specifications")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack(alignment: .top) {
                        VStack {
                            HStack {
                                Text("Height")
                                    .fontWeight(.bold)
                                Spacer()
                                Text("1.0 m")
                                    .font(.system(size: 12))
                            }
                            HStack {
                                Text("Width")
                                    .fontWeight(.bold)
                                Spacer()
                                Text("2.2 m")
                                    .font(.system(size: 12))
                            }
                        }
                        
                        Spacer()
                            .frame(width: 40)
                        
                        VStack {
                            HStack {
                                Text("Material")
                                    .fontWeight(.bold)
                                Spacer()
                                Text("Silk")
                                    .font(.system(size: 12))
                            }
                            HStack {
                                Text("Type")
                                    .fontWeight(.bold)
                                Spacer()
                                Text("Tulis + Cap")
                                    .font(.system(size: 12))
                            }
                        }
                    }
                }
                .padding()
                .background(Color(red: 230 / 255, green: 230 / 255, blue: 230 / 255))
                    
                HStack {
                    Text("Rp \(batik.price)")
                    Spacer()
                    Button(action: { self.createTask() }) {
                        Text("Buy Now")
                    }
                }
                .padding()
                
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    private func createTask() {
        let shoppingCartItem = ShoppingCartItem(batik: batik, quantity: 1)
        if let index = self.userData.shoppingCart.firstIndex(where: { $0.id == batik.id }) {
            self.userData.shoppingCart[index].quantity += 1
        } else {
            self.userData.shoppingCart.append(shoppingCartItem)
        }
        
        print(self.userData.shoppingCart)
    }
}

struct BatikDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        BatikDetailPage(batik: Batik(id: 1, name: "Batik Test", price: 1000000, imgUrl: "asdf"))
    }
}
