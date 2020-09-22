//
//  PlayerTVDelegate.swift
//  Drinking Games
//
//  Created by cain on 3/24/20.
//  Copyright © 2020 cain. All rights reserved.
//
//MARK: - Imports
import UIKit

final class PlayerTVDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 4
    }
}
