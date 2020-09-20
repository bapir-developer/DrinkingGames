//
//  Game.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/14/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import Foundation
import SwiftUI

enum NeverMindGame: String{
    case tapRoulette  = "Tap Roulette"
    case neverMind    = "Never Mind"
    case fortuneWheel = "Fortune Wheel"
    case luckyBottle  = "Lucky Bottle"
    
   func icon() -> String{
        switch self {
            case .tapRoulette:
                return "IconTapRoulette"
            case .neverMind:
                return "IconNeverMind"
            case .fortuneWheel:
                return "IconFortuneWheel"
            case .luckyBottle:
                return "IconLuckyBottle"
        }
    }
    
   func leadingPadding() -> CGFloat{
        switch self {
            case .tapRoulette:
                return -25.0
            case .neverMind:
                return 0
            case .fortuneWheel:
                return 25.0
            case .luckyBottle:
                return 0.0
        }
    }
}




               

       

           

