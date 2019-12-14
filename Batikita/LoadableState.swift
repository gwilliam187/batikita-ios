//
//  LoadableState.swift
//  Batikita
//
//  Created by George on 6/12/19.
//  Copyright © 2019 SGU. All rights reserved.
//

enum LoadableState<T> {
    case loading
    case fetched(Result<T, FetchError>)
}

enum FetchError: Error {
    case error(String)
    
    var localizedDescription: String {
        switch self {
        case .error(let message):
            return message
        }
    }
}
