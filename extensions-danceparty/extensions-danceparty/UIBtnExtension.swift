//
//  UIBtnExtension.swift
//  extensions-danceparty
//
//  Created by Wang, Zewen on 2018-01-04.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import Foundation
import UIKit
extension UIButton{
    func wiggle(){
        let wiggleAnim = CABasicAnimation(keyPath: "position") //position where wiggle buttion is
        wiggleAnim.duration = 0.05 // the amount of time that wiggle will shake
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true //this way and the opposite way
        
        //fromValue and toValue define the horizental distance of the button
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y) // set the position of this. This extension could be used by any button. so we can capture a reference to self
        wiggleAnim.fromValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        //add the animation to the button, we need to add the layer to the button
        layer.add(wiggleAnim, forKey: "position")
        
    }
    
    func dim(){
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.75 // fade down to 75%, 0 means transparent
        }) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0 // fade up to 100%
            })
        }
    }
    
    func colorize(){
        let randomArray = generateRandomNumbers(quantity: 3)
        let randomColor = UIColor(displayP3Red: randomArray[0]/255, green: randomArray[1]/255, blue: randomArray[2]/255, alpha: 1.0)
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = randomColor
        }
        
    }
}
