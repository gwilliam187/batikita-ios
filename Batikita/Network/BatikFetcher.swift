//
//  BatikFetcher.swift
//  Batikita
//
//  Created by George on 6/12/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import Foundation
import Combine

class BatikFetcher: ObservableObject {
    @Published var batiks = Root(batiks: [])
    @Published var loading = false
    public let url = "http://localhost:3000/api/test/"
//    var didChange = PassthroughSubject<BatikFetcher, Never>()
//    var batiks = Root(batiks: []) {
//        didSet {
//            didChange.send(self)
//        }
//    }
    
    init() {
        loading = true
        loadData()
    }
    
    private func loadData() {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url){ (data, _, _) in
            guard let data = data else { return }
            let batiks = try! JSONDecoder().decode(Root.self, from: data)
            DispatchQueue.main.async {
                self.batiks = batiks
                self.loading = false
            }
        }.resume()
    }
    
//    private static let apiUrlString = "http://localhost:3000/api/test"
//    var didChange = PassthroughSubject<BatikFetcher, Never>()
//
//    var state: LoadableState<Root> = .loading {
//        didSet {
//            didChange.send(self)
//        }
//    }
//
//    init() {
//        guard let apiUrl = URL(string: BatikFetcher.apiUrlString) else {
//            state = .fetched(.failure(.error("Malformed API URL.")))
//            return
//        }
//
//        URLSession.shared.dataTask(with: apiUrl) { [weak self] (data, _, error) in
//            if let error = error {
//                self?.state = .fetched(.failure(.error(error.localizedDescription)))
//                return
//            }
//
//            guard let data = data else {
//                self?.state = .fetched(.failure(.error("Malformed response data")))
//                return
//            }
//
//            let root = try! JSONDecoder().decode(Root.self, from: data)
//
//            DispatchQueue.main.async { [weak self] in
//                self?.state = .fetched(.success(root))
//            }
//
//            print(root)
//        }.resume()
//    }
}
