//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Wang, Zewen on 2018-01-03.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit


class ColorPresenterVC: UIViewController,ColorTransfer {
   
    

    @IBOutlet var backgroundColor: UIView!
    @IBOutlet weak var colorNameLbt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func userDidChoose(color: UIColor, withName colorName: String) {
        backgroundColor.backgroundColor = color
        colorNameLbt.text = colorName
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorTransferSegue" {
            guard let colorPickerVC = segue.destination as? ColorPickerVCViewController else{return}
            colorPickerVC.delegate = self
        }
    }
    

}

