//
//  ConvertedCurrenciesViewController.swift
//  CurrencyConverter Dayhuff
//
//  Created by Noah Dayhuff on 6/30/24.
//

import Foundation
import UIKit

class ConvertedCurrenciesViewController: UIViewController {
    
    @IBOutlet weak var usdAmountLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var pesosLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var wonLabel: UILabel!
    
    var usdAmount: Int!
    var isEuroSelected: Bool = false
    var isPesosSelected: Bool = false
    var isYenSelected: Bool = false
    var isWonSelected: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmountLabel.text = "Amount in USD: \(usdAmount!)"
        
        if isEuroSelected {
            euroLabel.text = "Amount in Euro: \(CurrencyConverter.convert(usd: usdAmount, toCurrency: "Euro"))"
        } else {
            euroLabel.isHidden = true
        }
        
        if isPesosSelected {
            pesosLabel.text = "Amount in Pesos: \(CurrencyConverter.convert(usd: usdAmount, toCurrency: "Pesos"))"
        } else {
            pesosLabel.isHidden = true
        }
        
        if isYenSelected {
            yenLabel.text = "Amount in Yen: \(CurrencyConverter.convert(usd: usdAmount, toCurrency: "Yen"))"
        } else {
            yenLabel.isHidden = true
        }
        
        if isWonSelected {
            wonLabel.text = "Amount in Won: \(CurrencyConverter.convert(usd: usdAmount, toCurrency: "Won"))"
        } else {
            wonLabel.isHidden = true
        }
    }
}
