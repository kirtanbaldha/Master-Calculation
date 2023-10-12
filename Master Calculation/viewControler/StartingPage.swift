//
//  ViewController.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class StartingPage: UIViewController {
    
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var aboutBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!
    @IBOutlet weak var rateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startBtn.layer.borderWidth = 1
        startBtn.layer.borderColor = UIColor.white.cgColor
        startBtn.layer.cornerRadius = 10
        
        aboutBtn.layer.borderWidth = 1
        aboutBtn.layer.borderColor = UIColor.white.cgColor
        aboutBtn.layer.cornerRadius = 10
        
        shareBtn.layer.borderWidth = 1
        shareBtn.layer.borderColor = UIColor.white.cgColor
        shareBtn.layer.cornerRadius = 10
        
        rateBtn.layer.borderWidth = 1
        rateBtn.layer.borderColor = UIColor.white.cgColor
        rateBtn.layer.cornerRadius = 10
        
    }
    
    @IBAction func startButton(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(identifier: "CalculationUtilities") as! CalculationUtilities
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func aboutBtn(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(identifier: "aboutPage") as! aboutPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}

