//
//  aboutPage.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class aboutPage: UIViewController {
    
    @IBOutlet weak var shareBtn: UIButton!
    @IBOutlet weak var rateBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        shareBtn.layer.borderWidth = 1
        shareBtn.layer.borderColor = UIColor.white.cgColor
        shareBtn.layer.cornerRadius = 10
        
        rateBtn.layer.borderWidth = 1
        rateBtn.layer.borderColor = UIColor.white.cgColor
        rateBtn.layer.cornerRadius = 10

    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    

}
