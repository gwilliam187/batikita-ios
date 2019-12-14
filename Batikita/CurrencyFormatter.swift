//
//  CurrencyFormatter.swift
//  Batikita
//
//  Created by George on 6/12/19.
//  Copyright © 2019 SGU. All rights reserved.
//

import Foundation

class CurrencyFormatter {
    
    func formatCurrency(val: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        return formatter.string(from: val as NSNumber)!
    }
}
