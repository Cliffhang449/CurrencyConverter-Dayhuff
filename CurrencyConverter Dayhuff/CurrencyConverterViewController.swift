//
//  CurrencyConverterViewController.swift
//  CurrencyConverter Dayhuff
//
//  Created by Noah Dayhuff on 6/30/24.
//

import Foundation
import UIKit

class CurrencyConverterViewController: UIViewController {
    
    
    @IBOutlet weak var usdTextField: UITextField!
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var pesosSwitch: UISwitch!
    @IBOutlet weak var yenSwitch: UISwitch!
    @IBOutlet weak var wonSwitch: UISwitch!
    @IBOutlet weak var errorMessageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessageLabel.isHidden = true
    }
    
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        guard let amountText = usdTextField.text, let amount = Int(amountText) else {
            errorMessageLabel.text = "Please enter a valid integer amount in USD."
            errorMessageLabel.isHidden = false
            return
        }
        errorMessageLabel.isHidden = true
        performSegue(withIdentifier: "showConvertedCurrencies", sender: amount)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showConvertedCurrencies" {
            let destinationVC = segue.destination as! ConvertedCurrenciesViewController
            if let amount = sender as? Int {
                destinationVC.usdAmount = amount
                destinationVC.isEuroSelected = euroSwitch.isOn
                destinationVC.isPesosSelected = pesosSwitch.isOn
                destinationVC.isYenSelected = yenSwitch.isOn
                destinationVC.isWonSelected = wonSwitch.isOn
            }
        }
    }
}
