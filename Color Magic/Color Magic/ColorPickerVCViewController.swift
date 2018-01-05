//
//  ColorPickerVCViewController.swift
//  Color Magic
//
//  Created by Wang, Zewen on 2018-01-03.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit

class ColorPickerVCViewController: UIViewController {
    var delegate : ColorTransfer? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text)
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel!.text)!)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
