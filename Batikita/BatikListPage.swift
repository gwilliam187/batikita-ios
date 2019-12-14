//
//  BatikListPage.swift
//  Batikita
//
//  Created by George on 29/11/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import SwiftUI
import Combine

struct BatikListPage: View {
    @ObservedObject var batikFetcher = BatikFetcher()
    @State var searchQuery: String = ""
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            VStack {
                if(batikFetcher.loading) {
                    ActivityIndicator(style: .medium)
                } else {
                    HStack {
                        TextField("Search", text: $searchQuery)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: {}) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal)
                    List(batikFetcher.batiks.batiks) { batik in
                        ZStack {
                            BatikRow(batik: batik)
                            NavigationLink(destination: BatikDetailPage(batik: batik)) {
                                EmptyView()
                            }
                        }
                    }
                }
            }
            
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct BatikListPage_Previews: PreviewProvider {
    static var previews: some View {
        BatikListPage()
    }
}
