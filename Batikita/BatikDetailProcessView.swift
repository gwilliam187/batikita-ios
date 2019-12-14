//
//  BatikDetailProcessView.swift
//  Batikita
//
//  Created by George on 7/12/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI

struct BatikDetailProcessView: View {
    var body: some View {
        ZStack {
            Image("batik_parang")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
            VStack {
                Spacer()
                
                ScrollView(.horizontal, content: {
                    HStack(spacing: 20) {
                        VStack {
                            Image("batik_1")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            Text("Hasil Akhir")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        VStack {
                            Image("batik_2")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            Text("Nyanting")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        VStack {
                            Image("batik_3")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            Text("Ngecat")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    }
                })
                .padding()
                .background(Color(red: 0, green: 0, blue: 0, opacity: 0.7))

            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.top)
    }
}

struct BatikDetailProcessView_Previews: PreviewProvider {
    static var previews: some View {
        BatikDetailProcessView()
    }
}
