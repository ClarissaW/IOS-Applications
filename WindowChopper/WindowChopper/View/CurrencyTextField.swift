//
//  CurrencyTextField.swift
//  WindowChopper
//
//  Created by Wang, Zewen on 2018-01-10.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit
// A class attribute
@IBDesignable // This can make the main storyboard and runtime view keep consistency

class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        // if we do not call this function, do not write this function because it will trigger performance issues
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.2742669092)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        let formmatter = NumberFormatter()
        formmatter.numberStyle = .currency
        formmatter.locale = .current
        currencyLbl.text = formmatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2497324486) //25% of white
        //backgroundColor = UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {//if p/placeholder(placeholder text) is not nil
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : UIColor.white])
            // placeholder! means placeholder has to have a value in it, that is to say, cannot be nil.
            // NSAttributedString, set the foregroundColor, we can do a lot of things with the attributes of the string, such as decoration, underlined, strike through
            attributedPlaceholder = place // attributedPlaceholder is a property of text field
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
//        if placeholder == nil {
//            placeholder = " "
//        }
//        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor : UIColor.white])
//        // placeholder! means placeholder has to have a value in it, that is to say, cannot be nil.
//        // NSAttributedString, set the foregroundColor, we can do a lot of things with the attributes of the string, such as decoration, underlined, strike through
//        attributedPlaceholder = place // attributedPlaceholder is a property of text field
//        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    

}
