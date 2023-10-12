//
//  Discount.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class Discount: UIViewController {
    
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var discountTextField: UITextField!
    @IBOutlet weak var priceAfterDiscountLabel: UILabel!
    @IBOutlet weak var savedAmountLabel: UILabel!

    @IBOutlet weak var calculate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceTextField.layer.borderWidth = 1
        priceTextField.layer.cornerRadius = 8
        priceTextField.layer.masksToBounds = true
        
        discountTextField.layer.borderWidth = 1
        discountTextField.layer.cornerRadius = 8
        discountTextField.layer.masksToBounds = true
        
        calculate.layer.borderWidth = 1
        calculate.layer.cornerRadius = 8
        calculate.layer.masksToBounds = true

    }
    @IBAction func clearAllButtonPressed(_ sender: UIButton) {
        // Clear all text fields and labels
        priceTextField.text = ""
        discountTextField.text = ""
        priceAfterDiscountLabel.text = "Price After Discount: "
        savedAmountLabel.text = "Saved Amount: "
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // Calculate the price after discount and saved amount
        if let price = Double(priceTextField.text ?? ""),
           let discount = Double(discountTextField.text ?? "") {
            let discountAmount = (price * discount) / 100
            let priceAfterDiscount = price - discountAmount
            priceAfterDiscountLabel.text = "\(priceAfterDiscount)"
            savedAmountLabel.text = "\(discountAmount)"
        }

    

}
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    




}
