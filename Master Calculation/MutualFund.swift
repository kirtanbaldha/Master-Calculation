//
//  MutualFund.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class MutualFund: UIViewController {
    
    @IBOutlet weak var monthlyIntrostTextFeald: UITextField!
    @IBOutlet weak var exReturn: UITextField!
    @IBOutlet weak var timePeriod: UITextField!
    @IBOutlet weak var CalculateBtn: UIButton!
    @IBOutlet weak var investLabel: UILabel!
    @IBOutlet weak var etcReturn: UILabel!
    @IBOutlet weak var total: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        monthlyIntrostTextFeald.layer.borderWidth = 1
        monthlyIntrostTextFeald.layer.cornerRadius = 8
        monthlyIntrostTextFeald.layer.masksToBounds = true
        
        exReturn.layer.borderWidth = 1
        exReturn.layer.cornerRadius = 8
        exReturn.layer.masksToBounds = true
        
        timePeriod.layer.borderWidth = 1
        timePeriod.layer.cornerRadius = 8
        timePeriod.layer.masksToBounds = true
        
        CalculateBtn.layer.borderWidth = 1
        CalculateBtn.layer.cornerRadius = 8
        CalculateBtn.layer.masksToBounds = true


    }
    
    @IBAction func clearBtn(_ sender: Any) {
        monthlyIntrostTextFeald.text = ""
        exReturn.text = ""
        timePeriod.text = ""
        investLabel.text = ""
        etcReturn.text = ""
        total.text = ""
    }
    
    @IBAction func submitbtn(_ sender: Any) {
        if let monthlyInvestment = Double(monthlyIntrostTextFeald.text ?? ""),
           let expectedReturn = Double(exReturn.text ?? ""),
           let timePeriod = Double(timePeriod.text ?? "") {
            let investedAmount = monthlyInvestment * timePeriod * 12
            let expectedReturnAmount = investedAmount * expectedReturn / 100
            let totalValue = investedAmount + expectedReturnAmount

            investLabel.text = "\(investedAmount)"
            etcReturn.text = "\(expectedReturnAmount)"
            total.text = " \(totalValue)"
        }
    }
    
   
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}


