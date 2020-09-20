//
//  MainIntialView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/15/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct AddingPlayerV: View {
    
//    //MARK: - Vars
//    @State private var playerManager    = PlayerManager()
//    @State private var isAlertPresented = false
//    @State private var isUniqueAlert    = false
//    @State private var listIsCleared    = false
//    @State private var pushNavigation   = false
    @Binding var acColor: Color
//
//    //MARK: - Views
//    private var background:  some View {
//        colors.darkBrownBackground.value
//            .edgesIgnoringSafeArea(.all)
//    }
//    private var appIcon:     some View {
//        Image("beercheers")
//            .frame(width: 167, height: 152)
//            .offset(y: Device.model! == .Six_6S_7_8_SE ? CGFloat(-50) : 0)
//    }
//    private var appName:     some View {
//        Text("Never Have I Ever")
//            .foregroundColor(colors.creamTitle.value)
//            .shadow(color: colors.creamTitle.value.opacity(0.3), radius: 6, x: 0, y: 3)
//            .font(rubik.black.with(Size: 36))
//            .offset(y: Device.model! == .Six_6S_7_8_SE ? CGFloat(-40) : CGFloat(25))
//
//    }
//    private var playerList:  some View {
//        PlayerList(names: $playerManager, listIsClear: $listIsCleared)
//             .offset(y: Device.model! == .Six_6S_7_8_SE ? CGFloat(-20) : 0)
//    }
//    private var startButton: some View {
//        Group{
//            Button(action: {
//            let numberOfPlayers = self.playerManager.players.count
//            if numberOfPlayers < 2 {
//                self.isAlertPresented.toggle()
//            }else{
//                var name  = [String]()
//
//                for item in self.playerManager.players{
//                    name.append(item.value.name)
//                }
//                if name.count != Set(name).count{
//                    self.playerManager.players.removeAll()
//                    self.isAlertPresented.toggle()
//                    self.isUniqueAlert.toggle()
//                    self.listIsCleared.toggle()
//                }else{
//                    self.pushNavigation.toggle()
//                }
//            }
//        })
//            {
//                GradientViewButton()
//        }
//
//            NavigationLink(destination: ModeSelectionView(acColor: $acColor), isActive: $pushNavigation) {
//                Text("")
//            }.hidden()
//        }
//    }
    
        
    
    //MARK: - MainBody
    var body: some View {
//            ZStack{
//                background
//                VStack{
//                    appIcon
//
//                    appName
//
//                    Spacer()
//
//                    playerList
//
//                    startButton
//
//                    Spacer()
//
//                }.blur(radius: isAlertPresented ? 30 : 0)
//
//                if isAlertPresented{
//                    PlayerTableAlert(isUniqueNamesAlert: $isUniqueAlert, shown: $isAlertPresented)
//                }
//
//        }
        Text("sample")
  
            //.sheet(isPresented: $nexPage, content: { ModeSelectionView() })
    }
}

struct MainIntialView_Previews: PreviewProvider {
    static var previews: some View {
        AddingPlayerV(acColor: .constant(.pink))
    }
}


