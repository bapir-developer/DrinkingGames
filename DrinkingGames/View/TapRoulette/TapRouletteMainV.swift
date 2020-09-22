//
//  TapRouletteMainView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/15/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct TapRouletteMainV: View {
    
    //MARK: - Vars
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var numberOfPlayers = 3
    
    //MARK: - Views
    private var background:   some View {
        var bc = GamesBackgroundV()
        bc.delegate = self
        return bc
    }
    private var backButton:   some View {
           Button(action: {
               self.presentationMode.wrappedValue.dismiss()
           }) {
               HStack {
               Image("backButton")
                   .renderingMode(.original)
                   .aspectRatio(contentMode: .fit)
                   .foregroundColor(.white)
                   
                   
               }
           }
       }
    private var title:        some View {
           Text("Tap Roulette")
               .font(rubik.black.with(Size: 32))
               .foregroundColor(colors.darkBrownTitle.value)
               .offset(y: -93)
       }
    private var topBar:       some View {
        PlayerCountV(numberOfPlayers: $numberOfPlayers)
        .offset(y: -100)
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
            VStack{
                title
                Spacer()
                
                topBar
                
                Spacer()
                
                TapRouletteGameScene(numberOfPeople: $numberOfPlayers)
                    .offset(y: -120)
                
                Spacer()
                
            }
           
        }.navigationBarBackButtonHidden(true)
         .navigationBarItems(leading: backButton)
    }
}

extension TapRouletteMainV: ButtonActionDelegate{
    func buttonTapAction() {
        numberOfPlayers = 3
    }
    
    
}
struct TapRouletteMainView_Previews: PreviewProvider {
    static var previews: some View {
        TapRouletteMainV()
    }
}
