//
//  NeverMindButton.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/14/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct NeverMindPlayButton: View {
    
    //MARK: - Vars
    @Binding var acColor: Color
    
    //MARK: - Views
    private var backgrouneGradient: some View {
        let firsColor = colors.gameplayBtnBaseGradient.value
        let lastColor = colors.touchYellowOuter.value
        let gradient = Gradient(colors: [firsColor, lastColor])
        
        return RadialGradient(gradient: gradient , center: .center
            , startRadius: 1, endRadius: 100)
            .edgesIgnoringSafeArea(.all)
            .frame(width: 314, height: 174)
            .cornerRadius(26)
    }
    private var gameTitle:          some View {
        Text("Never Have I Ever")
            .foregroundColor(colors.nevermindGamePlayButtonTitle.value)
            .font(rubik.black.with(Size: 24))
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.16), radius: 6, x: 0, y: 3)
            .multilineTextAlignment(.leading)
            .frame(width: 145)
            .padding(.leading, 64)
        
    }
    private var playButton:         some View {
        NavigationLink( destination: AddingPlayerV(acColor: $acColor), label: {
            
            HStack(spacing: 6){
                Text("Play Now")
                    .foregroundColor(colors.gameplayBtnBaseGradient.value)
                    .font(rubik.bold.with(Size: 13))
                    .shadow(color: Color.black.opacity(0.27), radius: 6, x: 0, y: 3)
                
                Image(systemName: "play.fill")
                    .foregroundColor(colors.gameplayBtnBaseGradient.value)
                    .frame(width: 12, height: 10)
            }
        })
            .buttonStyle(PlainButtonStyle())
            .frame(width: 115, height: 36)
            .background(colors.darkBrownBackground.value)
            .cornerRadius(18)
            .padding(.leading, 28)
    }
    private var gameIcon:           some View {
        Image("IconNeverMind")
            .resizable()
            .frame(width: 180, height: 170)
            .padding(.top, -105)
    }
    
    //MARK: - MainBody
    var body: some View {
        HStack{
            VStack(spacing: 37){
                gameTitle
                playButton
            }
            gameIcon
        }.background(backgrouneGradient)
    }
}

struct NeverMindButton_Previews: PreviewProvider {
    static var previews: some View {
        NeverMindPlayButton(acColor: .constant(.green))
            .previewLayout(.sizeThatFits)
    }
}
