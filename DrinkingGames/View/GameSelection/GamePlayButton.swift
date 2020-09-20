//
//  GameButton.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/14/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - SwiftUI
import SwiftUI

struct GamePlayButton: View {
    
    //MARK: - Vars
    var game: NeverMindGame
    
    //MARK: - View
    private var backgroundGradient: some View {
        
        let firstColor = colors.gameplayBtnBaseGradient.value
        let lastColor  = colors.touchYellowOuter.value
        let gradient   = Gradient(colors: [firstColor, lastColor])
        
        return RadialGradient(gradient: gradient, center: .center, startRadius: 1, endRadius: 100)
                .frame(width: 90, height: 144)
                .cornerRadius(12)
    }
    private var gameIcon:           some View {
        Image(game.icon())
            .padding(.top, -70)
            .padding(.leading, game.leadingPadding())
    }
    private var gameTitle:          some View {
        Text(game.rawValue)
            .foregroundColor(colors.darkBrownBackground.value)
            .font(rubik.black.with(Size: 18))
            .multilineTextAlignment(.center)
            .frame(width: 85)
    }
    
    //MARK: - MainBody
    var body: some View {
        VStack{
            gameIcon
            gameTitle
        }.background(backgroundGradient)
    }
}

struct GameButton_Previews: PreviewProvider {
    static var previews: some View {
        GamePlayButton(game: .tapRoulette)
            .previewLayout(.fixed(width: 115, height: 210))
    }
}
