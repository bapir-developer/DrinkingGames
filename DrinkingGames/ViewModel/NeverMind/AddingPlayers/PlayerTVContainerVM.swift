//
//  NHIEIntroVC.swift
//  test
//
//  Created by Amirreza Zarepour on 8/29/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import UIKit

final class PlayerTVContainerVM: UIViewController {

    var promt_view      =  NHIEIntroV()
    var delegate        = PlayerTVDelegate()
    var datasource      = PlayerTVDataSource()
    var player_manager  = PlayerManager()
    var playerManagerdelegate: ReturnPlayerManagerDelegate?
    
    override func loadView() {
        promt_view.vc             = self
        datasource.player_manager = player_manager
        datasource.vc             = self
        view                      = promt_view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        promt_view.setPlayerTVDelegateDataSource(delegate, datasource)
    }
    
    override func viewDidLayoutSubviews() {
        promt_view.postConfigurations()
    }

    @objc func addMoreCell(_ sender: UIButton){
        datasource.number_of_players += 1
        promt_view.playerTVReloadData()
        promt_view.playerTVScrollBottom()
    }
    
    @objc func playerTextFieldDidEditting(_ sender: UITextField){
        if sender.text != ""{
            player_manager.addPlayer(with_name: sender.text!, at_row: sender.tag)
            playerManagerdelegate?.Newplayer(pmanager: player_manager)
        }
    }
    
    func clearTableCell(){
        promt_view.clearTableCell()
    }
}
