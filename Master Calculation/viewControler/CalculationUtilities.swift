//
//  CalculationUtilities.swift
//  Master Calculation
//
//  Created by r85 on 12/10/23.
//

import UIKit

class CalculationUtilities: UIViewController {
    
    @IBOutlet weak var collectionViewOt: UICollectionView!
    var arr = ["Mutual Fund","Interest","Discount","EMI","School Result","Square or Hour"]
    var arrForImg =  ["Mutual Fund img","Interest img","Discount img","EMI img","School Result img","Square or Hour img"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
   
}
extension CalculationUtilities : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionViewOt.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! utilitiesCell
        cell.imgForutilitieas.image = UIImage(named: "\(arrForImg[indexPath.row])")
        cell.labelForutili.text = arr[indexPath.row]
        cell.layer.cornerRadius = 12
        cell.backgroundColor = UIColor.white
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 125)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let navigation = storyboard?.instantiateViewController(identifier: "MutualFund") as! MutualFund
            navigationController?.pushViewController(navigation, animated: true)
            
        }
        else if indexPath.row == 1{
            let navigation = storyboard?.instantiateViewController(identifier: "Interest") as! Interest
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if indexPath.row == 2{
            let navigation = storyboard?.instantiateViewController(identifier: "Discount") as! Discount
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if indexPath.row == 3{
            let navigation = storyboard?.instantiateViewController(identifier: "EMI") as! EMI
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if indexPath.row == 4{
            let navigation = storyboard?.instantiateViewController(identifier: "SchoolResult") as! SchoolResult
            navigationController?.pushViewController(navigation, animated: true)
        }
        else {
            let navigation = storyboard?.instantiateViewController(identifier: "SquareorHour") as! SquareorHour
            navigationController?.pushViewController(navigation, animated: true)
        }
    }
    
    
}
