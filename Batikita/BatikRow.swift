//
//  BatikRow.swift
//  Batikita
//
//  Created by George on 1/11/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI
import URLImage

struct BatikRow: View {
    var batik: Batik
    
    var body: some View {
        VStack(alignment: .leading) {
//            Image("batik_parang")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(height: 200.0)
            
            URLImage(URL(string: "http://localhost:3000/\(batik.imgUrl)")!, delay: 0.25) { proxy in
                proxy.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                
            }
            
            VStack(alignment: .leading) {
                
                Text(batik.name)
                    .font(.title)
                    .fontWeight(.black)
                
                Text("Rp \(batik.price)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
            .background(Color.white)
        }
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.1)))
    }
}

struct BatikRow_Previews: PreviewProvider {
    static var previews: some View {
        BatikRow(batik: Batik(id: 1, name: "Batik Test", price: 1000000, imgUrl: "asdf"))
    }
}
