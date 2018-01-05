//
//  ViewController.swift
//  extensions-danceparty
//
//  Created by Wang, Zewen on 2018-01-04.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dimBtn: UIButton!
    @IBOutlet weak var wiggleBtn: UIButton!
    @IBOutlet weak var colorizeBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func colorizeBtnPressed(_ sender: Any) {
        colorizeBtn.colorize()
    }
    
    
    @IBAction func wiggleBtnPressed(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    
    @IBAction func dimBtnPressed(_ sender: Any) {
        dimBtn.dim()
    }
    

}

