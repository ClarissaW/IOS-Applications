//
//  Wage.swift
//  WindowChopper
//
//  Created by Wang, Zewen on 2018-01-10.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
       
        //ceil shang qu zheng
       
        return Int(ceil(price/wage))
    }
}
