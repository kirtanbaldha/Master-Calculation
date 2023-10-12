//
//  EMI.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class EMI: UIViewController {
    
    @IBOutlet weak var loanAmountTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var timePeriodTextField: UITextField!
    @IBOutlet weak var emiAmountLabel: UILabel!
    @IBOutlet weak var totalInterestLabel: UILabel!
    @IBOutlet weak var totalPayableLabel: UILabel!
    @IBOutlet weak var calculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loanAmountTextField.layer.borderWidth = 1
        loanAmountTextField.layer.cornerRadius = 8
        loanAmountTextField.layer.masksToBounds = true
        
        interestRateTextField.layer.borderWidth = 1
        interestRateTextField.layer.cornerRadius = 8
        interestRateTextField.layer.masksToBounds = true
        
        timePeriodTextField.layer.borderWidth = 1
        timePeriodTextField.layer.cornerRadius = 8
        timePeriodTextField.layer.masksToBounds = true
        
        calculate.layer.borderWidth = 1
        calculate.layer.cornerRadius = 8
        calculate.layer.masksToBounds = true

    }
    @IBAction func clearAllButtonPressed(_ sender: UIButton) {
        // Clear all text fields and labels
        loanAmountTextField.text = ""
        interestRateTextField.text = ""
        timePeriodTextField.text = ""
        emiAmountLabel.text = "EMI Amount: "
        totalInterestLabel.text = "Total Interest: "
        totalPayableLabel.text = "Total Payable: "
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // Calculate EMI, total interest, and total payable amount
        if let loanAmount = Double(loanAmountTextField.text ?? ""),
           let interestRate = Double(interestRateTextField.text ?? ""),
           let timePeriod = Double(timePeriodTextField.text ?? "") {
            let interestRateMonthly = interestRate / 1200.0
            let numberOfMonths = timePeriod * 12
            let emi = loanAmount * interestRateMonthly / (1 - pow(1 + interestRateMonthly, -numberOfMonths))
            let totalInterest = (emi * numberOfMonths) - loanAmount
            let totalPayable = loanAmount + totalInterest

            emiAmountLabel.text = "\(emi)"
            totalInterestLabel.text = "\(totalInterest)"
            totalPayableLabel.text = "\(totalPayable)"
        }
    


}


    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
