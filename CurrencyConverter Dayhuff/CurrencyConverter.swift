//
//  CurrencyConverter.swift
//  CurrencyConverter Dayhuff
//
//  Created by Noah Dayhuff on 6/30/24.
//

import Foundation

class CurrencyConverter {
    static func convert(usd: Int, toCurrency currency: String) -> Double {
        switch currency {
        case "Euro":
            return Double(usd) * 0.85
        case "Pesos":
            return Double(usd) * 20.17
        case "Yen":
            return Double(usd) * 110.57
        case "Won":
            return Double(usd) * 1180.50
        default:
            return 0.0
        }
    }
}
