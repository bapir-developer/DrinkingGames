//
//  PlayerTVCell.swift
//  Drinking Games
//
//  Created by cain on 3/24/20.
//  Copyright © 2020 cain. All rights reserved.
//
//MARK: - Imports
import UIKit

final class PlayerTVCell: UITableViewCell {

    //MARK: - Vars
    private let playername: UITextField = {
        let txtfield = UITextField()
        
        
        txtfield.attributedPlaceholder = NSAttributedString(string: "Player", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8078431373, green: 0.662745098, blue: 0.5058823529, alpha: 0.5)])
  
        
        txtfield.backgroundColor       = #colorLiteral(red: 0.2078431373, green: 0.168627451, blue: 0.1450980392, alpha: 1)
        txtfield.font                  = UIFont.systemFont(ofSize: 14)
        txtfield.textColor             = #colorLiteral(red: 0.8078431373, green: 0.662745098, blue: 0.5058823529, alpha: 1)
        
        return txtfield
    }()
    private let dshed_boreder: UIView               = {
        let view = UIView()
        return view
    }()
    weak var vc: PlayerTVContainerVM?
    
    //MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        mainConfiguration()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: LayOuting
    private func setupViews(){
        addSubview(playername)
        addSubview(dshed_boreder)
        
        playername.anchor(top: self.topAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, left: self.leftAnchor, top_constant: 0, bottom_constant: 1, right_constant: 0, left_constant: 0, width_constant: 0, height_constant: 0)
        
        dshed_boreder.anchor(top: playername.bottomAnchor, bottom: nil, right: playername.rightAnchor, left: playername.leftAnchor, top_constant: 0, bottom_constant: 0, right_constant: 0, left_constant: 0, width_constant: 0, height_constant: 1)
    }
    
    //MARK: - Configurations
    private func mainConfiguration(){
        dshed_boreder.drawDottedLine(start: CGPoint(x: self.bounds.minX, y: self.bounds.minY), end: CGPoint(x: self.bounds.maxX, y: self.bounds.minY))
         self.backgroundColor = UIColor.clear
    }
    
    
    func configureCell(at indexpath: IndexPath){

        playername.text?.removeAll()
        playername.tag = indexpath.row
    
        textFieldAddToTarget()
        
        playername.placeholder = "Player \(indexpath.row + 1)"
        
        
    }
    
    func configureCell(at indexpath: IndexPath, name: String){
        
        playername.placeholder = "Player \(indexpath.row + 1)"
       
        playername.tag = indexpath.row
    
        textFieldAddToTarget()
        
        playername.text = name
        

        
        
    }
    
    private func textFieldAddToTarget(){
        playername.addTarget(vc.self, action: #selector(vc?.playerTextFieldDidEditting(_:)), for: .editingChanged)
    }


}
