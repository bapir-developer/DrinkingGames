//
//  NevermindMode.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/31/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import Foundation

enum NevermindMode: String{
    case Nope        = "nope"
    case Custom      = "custom"
    case Silly       = "silly"
    case Hot         = "hot"
    case SpringBreak = "springbreak"
    

    
    
    var title:       String {
        get {
            switch self {
                case .Nope:
                    return "Nope!"
                case .Custom:
                    return "Custom"
                case .Silly:
                    return "Silly"
                case .Hot:
                    return "Hot"
                case .SpringBreak:
                    return "Spring Break"
            }
        }
    }
    var description: String {
        get {
            switch self {
                case .Nope:
                    return """
                Use the wackiest "Never have I ever" as ice breakers. What an excellent way to get the party started!
                """
                case .Custom:
                    return "Create your own rules and play fully-customized games. Let your devilish imagination run wild."
                case .Silly:
                    return "Put all refinement and subtlety aside. This place is for total douches who want to get wasted at a party in full swing."
                case .Hot:
                    return """
                Discover your friends' dirty little secrets with suggestive, sometimes even guilty "Never have I ever"s.
                """
                case .SpringBreak:
                    return "Palm trees, beach volleyball, coconut trees, show-offs strutting their stuff on the beach... Relive your strangest vacation memories."
            }
        }
    }
    var image:       String {
        get {
            switch self {
                case .Nope:
                    return "NopeReviewImg"
                case .Custom:
                    return "customReviewTitleImage"
                case .Silly:
                    return "sillyReviewTitleImage"
                case .Hot:
                    return "hotReviewTitleImage"
                case .SpringBreak:
                    return "springbreakReviewTitleImage"
            }
        }
    }
}
