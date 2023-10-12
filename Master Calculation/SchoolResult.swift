//
//  SchoolResult.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class SchoolResult: UIViewController {
    
    @IBOutlet weak var totalMarksTextField: UITextField!
    @IBOutlet weak var yourTotalMarksTextField: UITextField!
    @IBOutlet weak var yourPercentageLabel: UILabel!
    
    @IBOutlet weak var calculate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalMarksTextField.layer.borderWidth = 1
        totalMarksTextField.layer.cornerRadius = 8
        totalMarksTextField.layer.masksToBounds = true
        
        yourTotalMarksTextField.layer.borderWidth = 1
        yourTotalMarksTextField.layer.cornerRadius = 8
        yourTotalMarksTextField.layer.masksToBounds = true
        
        calculate.layer.borderWidth = 1
        calculate.layer.cornerRadius = 8
        calculate.layer.masksToBounds = true

        
    }
    @IBAction func clearAllButtonPressed(_ sender: UIButton) {
        // Clear all text fields and the label
        totalMarksTextField.text = ""
        yourTotalMarksTextField.text = ""
        yourPercentageLabel.text = "Your Percentage: "
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // Calculate your percentage
        if let totalMarks = Double(totalMarksTextField.text ?? ""),
           let yourTotalMarks = Double(yourTotalMarksTextField.text ?? "") {
            let percentage = (yourTotalMarks / totalMarks) * 100.0
            yourPercentageLabel.text = "\(percentage)%"
        }
        
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    
}
