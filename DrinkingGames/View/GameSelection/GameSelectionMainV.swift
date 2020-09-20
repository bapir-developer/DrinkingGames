//
//  GameSelectionView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/13/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct GameSelectionMainV: View {
    
    //MARK: - Vars
    @State var langSelectionMode = false
    @State var flag: language    = .UK
    @State var animationEffect   = false
    @State var acColor: Color    = colors.selectmodeReviewbc.value
    @State var isNavTopBarHidden = false
    
    //MARK: - Views
    private var appName:        some View {
        Text("Drinking Game")
            .font(rubik.black.with(Size: Device.model! != .Six_6S_7_8_SE ? 63 : 23))
            .foregroundColor(colors.creamTitle.value)
            .shadow(color: colors.creamTitle.value.opacity(0.3), radius: 6, x: 0, y: 3)
            .multilineTextAlignment(.center)
    }
    private var blurBackground: some View {
        VisualEffectV(effect: UIBlurEffect(style: .dark))
        .edgesIgnoringSafeArea(.all)
    }
    private var langSelection:  some View {
        LangSelectionV(selectingMode: $langSelectionMode, lang: $flag)
            .padding(.leading, 40)
    }
    private var permiumeButton: some View {
        Image("ButtonPurch")
            .padding(.trailing, 40)
            .scaleEffect(animationEffect ? 0.9 : 1.1)
            .opacity(animationEffect ? 0.8 : 1)
            .animation(pulse, value: animationEffect)
            .onAppear(){
                self.animationEffect.toggle()
        }
    }
    private var tapRoulette:    some View {
        NavigationLink(destination: TapRouletteMainV()){
            GamePlayButton(game: .tapRoulette)
        }.buttonStyle(PlainButtonStyle())
    }
    private var luckyBottle:    some View {
        NavigationLink(destination: LuckyBottleMainV()){
            GamePlayButton(game: .luckyBottle)
        }.buttonStyle(PlainButtonStyle())
    }
    private var fortuneWheel:   some View {
        NavigationLink(destination: FortuneWheelMainV()) {
            GamePlayButton(game: .fortuneWheel)
        }.buttonStyle(PlainButtonStyle())
    }
    private var bottomBar:      some View {
        BottomBar()
            .padding(.bottom, 50)
    }
    private var nevermindBtn:   some View {
        NeverMindPlayButton(acColor: $acColor)
            .padding(.bottom, 50)
    }
    
    //MARK: - MainBody
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    ///TopBar
                    HStack{
                        if !langSelectionMode{
                            langSelection
                        }
                        Spacer()
                        
                        permiumeButton
                    }.padding(.top, 70)
                    Spacer()
                    
                    appName
                    Spacer()
                    
                    nevermindBtn
                    Spacer()
                    ///Games
                    HStack(alignment: .center, spacing: 5){
                        fortuneWheel
                        HStack(spacing: 25){
                            luckyBottle
                            tapRoulette
                        }
                    }
                    Spacer()
                    
                    bottomBar
                    }
                ///BlurBackGround
                if langSelectionMode{
                    
                    blurBackground
                    VStack{
                        langSelection
                            .padding(.top, 60)
                       Spacer()
                    }
                }
            }.background(colors.darkBrownBackground.value)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("")
           
        
        }
            .accentColor(acColor)
    }
}

struct GameSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GameSelectionMainV()
    }
}
