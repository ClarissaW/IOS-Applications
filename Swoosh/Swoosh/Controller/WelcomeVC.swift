//
//  ViewController.swift
//  Swoosh
//
//  Created by Wang, Zewen on 2018-01-08.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
   
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var swoosh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        background.frame = view.frame
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindFromSkillVC(unwind : UIStoryboardSegue){
        
    }
}

