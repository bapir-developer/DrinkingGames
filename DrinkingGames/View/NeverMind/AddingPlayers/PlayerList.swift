//
//  PlayerTable.swift
//  swtest
//
//  Created by Amirreza Zarepour on 8/29/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Import
import SwiftUI

struct PlayerList: UIViewControllerRepresentable {

   //MARK: - Vars
    @Binding var names: PlayerManager
    @Binding var listIsClear: Bool
    var player_manager  = PlayerManager()
    
    func makeUIViewController(context: Context) -> PlayerTVContainerVM {
        let introvc = PlayerTVContainerVM()
        //5
        introvc.playerManagerdelegate = context.coordinator
        return introvc
    }
    
    func updateUIViewController(_ uiViewController: PlayerTVContainerVM, context: Context) {
        if listIsClear{
            DispatchQueue.main.async {
                self.listIsClear.toggle()
                uiViewController.clearTableCell()
            }
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, ReturnPlayerManagerDelegate{
        
        var parent: PlayerList
        
        init(_ parent: PlayerList) {
            self.parent = parent
        }
        
        func Newplayer(pmanager: PlayerManager) {
            parent.names = pmanager
        }
        
        
    }
    
}


