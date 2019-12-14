//
//  Batik.swift
//  Batikita
//
//  Created by George on 1/11/19.
//  Copyright © 2019 SGU. All rights reserved.
//

struct Root: Decodable {
    var batiks: [Batik]
}

struct Batik: Decodable, Identifiable {
    var id: Int
    var name: String
    var price: Int
    var imgUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case price
        case imgUrl
    }
}

