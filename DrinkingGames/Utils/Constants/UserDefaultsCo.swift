//
//  UserDefaults.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/13/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import Foundation

//MARK: - Vars
let defaults = UserDefaults.standard

//MARK: - SavingLoadingFunctions
func saveLang(_ lang: language){
    switch lang {
        case .UK:
            defaults.set("en", forKey: "lang")
        case .France:
            defaults.set("fr", forKey: "lang")
        case .Germany:
            defaults.set("du", forKey: "lang")
    }
    

}
func getLang() -> String?{
    defaults.string(forKey: "lang")
}
