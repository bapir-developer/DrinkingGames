//
//  PlayerCountView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/21/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct PlayerCountV: View {
    
    //MARK: - Var
    @Binding var numberOfPlayers: Int
    
    
    //MARK: - Views
    private var border:      some View {
        RoundedRectangle(cornerRadius: 40)
            .strokeBorder( style: StrokeStyle( lineWidth: 2, dash: [6]))
            .frame(width: 330, height: 80)
            .foregroundColor(colors.darkBrownTitle.value)
    }
    private var minusButton: some View {
        Button(action: {
            if self.numberOfPlayers >= 3 {
             self.numberOfPlayers -= 1
            }
        }) {
            Image("ButtonMinus")
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
            
        }
    }
    private var title:       some View {
        Text("\(numberOfPlayers) players")
            .font(rubik.regular.with(Size: 31))
            .foregroundColor(colors.darkBrownTitle.value)
    }
    private var addButton:   some View {
        Button(action: {
            if self.numberOfPlayers <= 3 {
                self.numberOfPlayers += 1
            }
            
        }) {
            Image("ButtonAdd")
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
            
        }
    }
    
    
    //MARK: - MainBody
    var body: some View {
        HStack{
            minusButton
            title
            addButton
        }.overlay( border)
    }
}

struct PlayerCountView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCountV(numberOfPlayers: .constant(3))
    }
}
