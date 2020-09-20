//
//  Language.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/13/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import Foundation

enum language: String{
    case UK       = "UK"
    case France   = "France"
    case Germany  = "Germany"
    
    func flag() -> String {
       "\(rawValue)Flag"
    }
}
