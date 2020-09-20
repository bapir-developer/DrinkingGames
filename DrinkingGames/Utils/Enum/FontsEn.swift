//
//  Fonts.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/13/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import Foundation
import SwiftUI

typealias rubik = Fonts.Rubik

enum Fonts{

    enum Rubik: String{
        case italic        = "Italic"
        case regular       = "Regular"
        case bold          = "Bold"
        case medium_italic = "MediumItalic"
        case medium        = "Medium"
        case black_italic  = "BlackItalic"
        case bold_italic   = "BoldItalic"
        case light_italic  = "LightItalic"
        case black         = "Black"
        case light         = "Light"
        
        func with(Size: CGFloat) -> Font {
            Font.custom("Rubik-\(rawValue)", size: Size)
        }
    }
}
