//
//  SquareorHour.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class SquareorHour: UIViewController {
    
    @IBOutlet weak var inputNumberTextField: UITextField!
    @IBOutlet weak var squareOrHourTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputNumberTextField.layer.borderWidth = 1
        inputNumberTextField.layer.cornerRadius = 8
        inputNumberTextField.layer.masksToBounds = true
        
        squareOrHourTextField.layer.borderWidth = 1
        squareOrHourTextField.layer.cornerRadius = 8
        squareOrHourTextField.layer.masksToBounds = true
        
        calculate.layer.borderWidth = 1
        calculate.layer.cornerRadius = 8
        calculate.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clearAllButtonPressed(_ sender: UIButton) {
        // Clear all text fields and the label
        inputNumberTextField.text = ""
        squareOrHourTextField.text = ""
        resultLabel.text = "Result: "
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        // Calculate the result based on user choice
        if let inputNumber = Double(inputNumberTextField.text ?? ""),
           let operation = squareOrHourTextField.text?.lowercased() {
            var result: Double = 0.0
            if operation == "square" {
                result = inputNumber * inputNumber
            } else if operation == "hour" {
                result = inputNumber * 3600
            } else {
                // Handle invalid operation
                resultLabel.text = "Invalid operation"
                return
            }
            resultLabel.text = "\(result)"
        }
    }

    @IBAction func backBtu(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}




