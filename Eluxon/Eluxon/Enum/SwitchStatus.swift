//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Wang, Zewen on 2018-01-05.
//  Copyright © 2018 Wang, Zewen. All rights reserved.
//

import Foundation
enum SwitchStatus : Togglable{
    case on
    case off
    //case on,off
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
    
    
}
