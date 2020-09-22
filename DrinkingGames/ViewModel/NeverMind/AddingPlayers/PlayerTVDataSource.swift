//
//  PlayerTVDataSource.swift
//  Drinking Games
//
//  Created by cain on 3/24/20.
//  Copyright © 2020 cain. All rights reserved.
//
//MARK: - Imports
import UIKit

final class PlayerTVDataSource: NSObject, UITableViewDataSource {
    
    //MARK: - Vars
    var player_manager: PlayerManager?
    weak var vc: PlayerTVContainerVM?
    var number_of_players = 4
    var cells = [PlayerTVCell]()
    
    //MARK: - Initializers
    override init() {
        super.init()
    }
    //MARK: - DataSources
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let data = player_manager{
            if data.players.count > 4 {
                number_of_players = data.players.count
                return number_of_players
            }
        }
        return number_of_players
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: player_table_cellid, for: indexPath) as! PlayerTVCell
        if let player = player_manager?.players[indexPath.row]{
            cell.configureCell(at: indexPath, name: player.name)
                    return cell
          }
        cell.configureCell(at: indexPath)
        return cell
    }
}
