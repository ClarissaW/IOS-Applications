//
//  ViewController.swift
//  Eluxon
//
//  Created by Wang, Zewen on 2018-01-05.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var switchStatus : SwitchStatus = .off
    @IBOutlet weak var toggleBtn: UIButton!
    @IBOutlet weak var onOffLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleBtnPressed(_ sender: UIButton) {
        switchStatus.toggle()
        if switchStatus == .off {
            toggleBtn.setImage(UIImage(named:"offBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
            onOffLbl.text = "🌚 OFF 🌚"
            onOffLbl.textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
        else {
            toggleBtn.setImage(UIImage(named:"onBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            onOffLbl.text = "🌝 ON 🌝"
            onOffLbl.textColor = #colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)
        }
    }
    
    
}

