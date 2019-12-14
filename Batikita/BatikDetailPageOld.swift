//
//  BatikDetailPageOld.swift
//  Batikita
//
//  Created by George on 29/11/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI

struct BatikDetailPageOld: View {
    var body: some View {
        VStack {
            ScrollView {
                Image("batik_parang")
                    .resizable()
                    .frame(height: 300)
                    .aspectRatio(contentMode: .fill)
                
                Text("Batik Parang")
                    .font(.title)
                    .fontWeight(.black)
                
                
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
                
            }
        
            HStack {
                Text("Rp 1.500.000")
                Spacer()
                Button(action: { print("What") }) {
                    Text("Buy Now")
                }
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct BatikDetailPageOld_Previews: PreviewProvider {
    static var previews: some View {
        BatikDetailPageOld()
    }
}
