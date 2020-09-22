//
//  View.swift
//  test
//
//  Created by Amirreza Zarepour on 8/28/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import UIKit

final class NHIEIntroV: UIView {
    
    weak var vc: PlayerTVContainerVM?
    
    private let player_table_container: UIView      = {
        let view = UIView()
        
        view.backgroundColor     = #colorLiteral(red: 0.2078431373, green: 0.168627451, blue: 0.1450980392, alpha: 1)
        view.layer.cornerRadius  = 14
        view.layer.masksToBounds = true
        
        return view
    }()
    private let player_table: UITableView           = {
        let tbl = UITableView()
        
        tbl.backgroundColor = #colorLiteral(red: 0.2078431373, green: 0.168627451, blue: 0.1450980392, alpha: 1)
        
        
        return tbl
    }()
    private let add_player_button: UIButton         = {
        let btn = UIButton()
        
        btn.setTitle("Add more player", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.8078431373, green: 0.662745098, blue: 0.5058823529, alpha: 1), for: .normal)
        
        btn.titleLabel?.font = UIFont(name: "Rubik-Medium", size: 14)
        
        btn.setImage(#imageLiteral(resourceName: "ButtonPlayerAdd"), for: .normal)
        
        return btn
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        mainConfigurations()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        setupTopMiddleQuarterViews()
        setupBottomMiddleQuarterViews()
    }
    
    private func setupTopMiddleQuarterViews(){
        addSubview(player_table_container)
        addSubview(player_table)
        
        player_table_container.anchorCenter(center_with: self, width: 328, height: 266)
   
        
        player_table.anchor(top: player_table_container.topAnchor, bottom: player_table_container.bottomAnchor, right: player_table_container.rightAnchor, left: player_table_container.leftAnchor, top_constant: 30, bottom_constant: 55, right_constant: 30, left_constant: 30, width_constant: 0, height_constant: 0)
        

    }
    
    private func setupBottomMiddleQuarterViews(){
        addSubview(add_player_button)
        
        add_player_button.anchor(top: player_table.bottomAnchor, bottom: player_table_container.bottomAnchor, right: player_table.rightAnchor, left: player_table.leftAnchor, top_constant: 0, bottom_constant: 0, right_constant: 0, left_constant: 0, width_constant: 0, height_constant: 0)
    }
    
    private func mainConfigurations(){
        self.backgroundColor = UIColor.clear
        player_table.register(PlayerTVCell.self, forCellReuseIdentifier: player_table_cellid)
        addButtonToTarget()
        
    }
    
    func postConfigurations(){
        
        configuePlayerButtonUIEdgeInset()
        
    }
    
    private func addButtonToTarget(){
        
       add_player_button.addTarget(vc.self, action: #selector(vc?.addMoreCell(_:)), for: .touchUpInside)
        
    }
    
    func setPlayerTVDelegateDataSource(_ delegate: UITableViewDelegate, _ datasource: UITableViewDataSource){
        player_table.delegate   = delegate
        player_table.dataSource = datasource
    }
    
    private func configuePlayerButtonUIEdgeInset(){
        let image_width = add_player_button.imageView?.frame.width
        let btn_width   = add_player_button.frame.width
        
        add_player_button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: ((btn_width/2) - (image_width!/2)))
        
        add_player_button.titleEdgeInsets = UIEdgeInsets(top: 0, left: (btn_width/2) - image_width!, bottom: 0, right: -image_width!)
    }
    
    
    func playerTVReloadData(){
        
        player_table.reloadData()
    }
    
    func playerTVScrollBottom(){
      
        DispatchQueue.main.async {
            let indexPath = IndexPath(
                row: self.player_table.numberOfRows(inSection:  0) - 1,
                section: self.player_table.numberOfSections - 1)
            self.player_table.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
    }
    
    func clearTableCell(){
        player_table.reloadData()
    }
}
