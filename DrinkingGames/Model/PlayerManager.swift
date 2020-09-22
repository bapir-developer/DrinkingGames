//
//  PlayerManager.swift
//  Drinking Games
//
//  Created by cain on 3/25/20.
//  Copyright © 2020 cain. All rights reserved.
//
//MARK: - Imports
import Foundation

class PlayerManager {
    
    //MARK: - Vars
    var players : [Int : Player]
    
    //MARK: - Initializer
    init() {
     
        self.players = [Int : Player]()
        
    }

    //MARK: - Management
     func addPlayer(with_name player_name: String, at_row row: Int){
       
        let player = Player(name: player_name)
        
        players[row] = player
            
    }
    
    
}

