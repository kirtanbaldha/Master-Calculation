//
//  Interest.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class Interest: UIViewController {
    
    @IBOutlet weak var principalAmountTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var totalTimeTextField: UITextField!
    @IBOutlet weak var interestAmountLabel: UILabel!
    
    @IBOutlet weak var calculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        principalAmountTextField.layer.borderWidth = 1
        principalAmountTextField.layer.cornerRadius = 8
        principalAmountTextField.layer.masksToBounds = true
        
        interestRateTextField.layer.borderWidth = 1
        interestRateTextField.layer.cornerRadius = 8
        interestRateTextField.layer.masksToBounds = true
        
        totalTimeTextField.layer.borderWidth = 1
        totalTimeTextField.layer.cornerRadius = 8
        totalTimeTextField.layer.masksToBounds = true
        
        calculate.layer.borderWidth = 1
        calculate.layer.cornerRadius = 8
        calculate.layer.masksToBounds = true

    }
    
    @IBAction func clearAllButtonPressed(_ sender: UIButton) {
        // Clear all text fields and labels
        principalAmountTextField.text = ""
        interestRateTextField.text = ""
        totalTimeTextField.text = ""
        interestAmountLabel.text = ""
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // Calculate the interest amount and update the label
        if let principalAmount = Double(principalAmountTextField.text ?? ""),
           let interestRate = Double(interestRateTextField.text ?? ""),
           let totalTime = Double(totalTimeTextField.text ?? "") {
            let interestAmount = (principalAmount * interestRate * totalTime) / 100
            interestAmountLabel.text = "\(interestAmount)"
        }
    


}

    @IBAction func backButoon(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    



}
