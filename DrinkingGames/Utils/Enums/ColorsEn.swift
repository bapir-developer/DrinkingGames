//
//  ColorsEn.swift
//  DrinkingGames
//
//  Created by Amirreza Zarepour on 9/20/20.
//
//MARK: - Imports
import Foundation
import SwiftUI

typealias colors = APPColors

enum APPColors {
    case darkBrownBackground
    case creamTitle
    case darkBrownTitle
    case lightCreamBackground
    case darkCream
    case touchRedOuter
    case touchRedInner
    case touchGreenOuter
    case touchGreenInner
    case touchYellowOuter
    case touchYellowInner
    case touchBlueInner
    case touchBlueOuter
    case touchCream
    case addPlayerAlertColor
    case modeSelectionDivider
    case selectedMode
    case selectmodeGoButton
    case selectmodeReviewbc
    case selectmodeReviewText
    case fortunewheelGreen
    case fortunewheelOrange
    case fortinewheelBlue
    case fortunewheelPink
    case winnerBC
    case winnerTitleShadow
    case winnerGold
    case winnerGoldShadow
    case customBCfirstgradient
    case customBCSecondGradient
    case customYellowOk
    case customAddBC
    case gameplayYellow
    case gameplayGreen
    case gameplayred
    case round1TitleShadow
    case round2TitleShadow
    case round3TitleShadow
    
    var value: Color {
        get{
            switch self {
                case .darkBrownBackground:
                    return Color(red: 30 / 255, green: 26 / 255, blue: 25 / 255)
                case .creamTitle:
                    return Color(red: 236 / 255, green: 217 / 255, blue: 197 / 255)
                case .darkBrownTitle:
                    return Color(red: 96 / 255, green: 65 / 255, blue: 46 / 255)
                case .lightCreamBackground:
                    return Color(red: 241 / 255, green: 234 / 255, blue: 226 / 255)
                case .darkCream:
                    return Color(red: 236 / 255, green: 217 / 255, blue: 197 / 255)
                case .touchRedInner:
                    return Color(red: 211 / 255, green: 95 / 255, blue: 51 / 255)
                case .touchRedOuter:
                    return Color(red: 139 / 255, green: 60 / 255, blue: 30 / 255)
                case .touchGreenOuter:
                    return Color(red: 0, green: 125 / 255, blue: 77 / 255)
                case .touchGreenInner:
                    return Color(red: 54 / 255, green: 196 / 255, blue: 141 / 255)
                case .touchYellowOuter:
                    return Color(red: 238 / 255, green: 157 / 255, blue: 16 / 255)
                case .touchYellowInner:
                    return Color(red: 253 / 255, green: 197 / 255, blue: 101 / 255)
                case .touchBlueOuter:
                    return Color(red: 27 / 255, green: 3 / 255, blue: 163 / 255)
                case .touchBlueInner:
                    return Color(red: 118 / 255, green: 104 / 255, blue: 200 / 255)
                case .touchCream:
                    return Color(red: 96 / 255, green: 65 / 255, blue: 46 / 255, opacity: 0.4)
                case .addPlayerAlertColor:
                    return Color(red: 0.1767598987, green: 0.1647417545, blue: 0.1604485512, opacity:  1)
                case .selectedMode:
                    return Color(red: 241 / 255, green: 234 / 255, blue: 226 / 255)
                case .modeSelectionDivider:
                    return colors.selectedMode.value.opacity(0.1)
                case .selectmodeGoButton:
                    return Color(red: 235 / 255, green: 141 / 255, blue: 31 / 255)
                case .selectmodeReviewbc:
                    return Color(red: 206 / 255, green: 169 / 255, blue: 129 / 255)
                case .selectmodeReviewText:
                    return Color(red: 241 / 255, green: 234 / 255, blue: 226 / 255)
                case .fortinewheelBlue:
                    return Color(red: 57 / 255, green: 162 / 255, blue: 238 / 255)
                case .fortunewheelPink:
                    return Color(red: 202 / 255, green: 60 / 255, blue: 118 / 255)
                case .fortunewheelGreen:
                    return Color(red: 40 / 255, green: 173 / 255, blue: 115 / 255)
                case .fortunewheelOrange:
                    return Color(red: 251 / 255, green: 167 / 255, blue: 39 / 255)
                case .winnerBC:
                    return Color(red: 46 / 255, green: 46 / 255, blue: 46 / 255)
                case .winnerTitleShadow:
                    return Color(red: 22 / 255, green: 22 / 255, blue: 22 / 255).opacity(0.35)
                case .winnerGold:
                    return Color(red: 255 / 255, green: 214 / 255, blue: 63 / 225)
                case .winnerGoldShadow:
                    return Color(red: 16 / 255, green: 13 / 255, blue: 0).opacity(0.46)
                case .customBCfirstgradient:
                    return Color(red: 230 / 255, green: 202 / 255, blue: 173 / 255)
                case .customBCSecondGradient:
                    return Color(red: 241 / 255, green: 234 / 255, blue: 226 / 255)
                case .customYellowOk:
                    return Color(red: 230 / 255, green: 180 / 255, blue: 0)
                case .customAddBC:
                    return Color(red: 53 / 255, green: 43 / 255, blue: 37 / 255)
                case .gameplayGreen:
                    return Color(red: 0, green: 72 / 255, blue: 44 / 255)
                case .gameplayred:
                    return Color(red: 64 / 255, green: 1 / 255, blue: 1 / 255)
                case .gameplayYellow:
                    return Color(red: 230 / 255, green: 180 / 255, blue: 0)
                case .round1TitleShadow:
                    return Color(red: 168 / 255, green: 132 / 255, blue: 0 / 255)
                case .round2TitleShadow:
                    return Color(red: 0, green: 26 / 255, blue: 25 / 255)
                case .round3TitleShadow:
                    return Color(red: 22 / 255, green: 0, blue: 0)
            }
        }
    }
    
    
}
