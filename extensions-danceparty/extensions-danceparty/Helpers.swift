//
//  Helpers.swift
//  extensions-danceparty
//
//  Created by Wang, Zewen on 2018-01-04.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import UIKit

func generateRandomNumbers(quantity: Int) -> [CGFloat]{
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity{
        let randomNumber = CGFloat(arc4random_uniform(255))
            randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
