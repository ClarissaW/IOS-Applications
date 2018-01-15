//
//  ViewController.swift
//  WindowChopper
//
//  Created by Wang, Zewen on 2018-01-10.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var priceText: CurrencyTextField!
    @IBOutlet weak var hourLbl: UILabel!
    
    @IBOutlet weak var wageText: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //create a button programly
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        priceText.inputAccessoryView = calBtn
        wageText.inputAccessoryView = calBtn
        
//        // set the title of the button, do not use calBtn.titleLabel?.text = "Calculate", use setTitle. The same as calBtn.setTitleColor
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)//what function will be called
        //when we use #selector to call the function, this is actually an object-c way, so the function should be marked as @objc
        // e.g. use selector
    }
    
    @objc func calculate(){//object-c runtime function
       //local variable
        if let wagetext = wageText.text, let pricetext = priceText.text{
            if let wage = Double(wagetext), let price = Double(pricetext){
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                //resultLbl.text = String(ceil(price / wage))
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                //call the struct Wage
            }
            // the line commented is not right!!! (if let wage = Double(wageText.text), let price = Double(priceText.text){})
        }
    }
    //unit test 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageText.text = ""
        priceText.text = ""
        
    }
}

