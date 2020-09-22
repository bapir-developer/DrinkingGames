//
//  PlayButton.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 9/1/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct PlayButton: View {
    
    //MARK: - Vars
    @State private var navigateToCutsomView = false
    @State private var navigateToGameScene = false
    @Binding var gameMode: NevermindMode
    @Binding var acColor: Color
    
    //MARK: - Views
    private var button: some View {
        Group{
            Button(action: {
                switch self.gameMode{
                    case .Custom:
                        self.navigateToCutsomView.toggle()
                    case .Nope, .Silly, .SpringBreak, .Hot:
                        self.navigateToGameScene.toggle()
                }
                
            }) {
                ZStack{
                    colors.selectmodeGoButton.value
                    Text("Go!")
                        .font(rubik.bold.with(Size: 24))
                        .foregroundColor(.white)
                }.frame(width: 180, height: 60)
                    .cornerRadius(30)
            }
            
            NavigationLink(destination: AddYourOwnRolesV(acColor: $acColor), isActive: $navigateToCutsomView) {
                Text("")
            }.hidden().accentColor(.red)
            
            NavigationLink(destination: GameplayScene(mode: $gameMode), isActive: $navigateToGameScene) {
                Text("")
            }.hidden()
            
        }
    }
    
    //MARK: - MainBody
    var body: some View {
        button
    }
    

}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(gameMode: .constant(.Custom), acColor: .constant(.green))
            .previewLayout(.sizeThatFits)
    }
}
