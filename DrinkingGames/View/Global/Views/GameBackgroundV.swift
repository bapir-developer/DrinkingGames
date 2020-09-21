//
//  MainBackgroundView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/17/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct GamesBackgroundV: View {
    
    //MARK: - Vars
    let buttonBackgroundRadius   = Device.model! == .Six_6S_7_8_SE ? CGFloat(105) : CGFloat(165)
    let buttonFramRadius         = Device.model! == .Six_6S_7_8_SE ? CGFloat(130) : CGFloat(210)
    let buttonRadius             = Device.model! == .Six_6S_7_8_SE ? CGFloat(70) : CGFloat(120)
    var delegate: ButtonActionDelegate?
    
    //MARK: - Views
    private var background:    some View {
        colors.lightCreamBackground.value
            .edgesIgnoringSafeArea(.all)
            .frame(width: screenWidth, height: screenHeight)
    }
    private var topBackground: some View {
        let gradient = Gradient(colors: [colors.lightCreamBackground.value,                                       colors.darkCream.value])

        return LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                     .cornerRadius(50)
                    .padding(.bottom, screenWidth / 4.6)
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: -18)
                    
    }
    private var button:        some View {
        return ZStack{
            ///Button Background
            colors.darkCream.value
                .frame(width: buttonBackgroundRadius, height: buttonBackgroundRadius)
                .clipShape(Circle())
            
            ///Button
            Button(action: {
                self.delegate?.buttonTapAction()
            }) {
                ZStack{
                    colors.lightCreamBackground.value
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.24), radius: 16, x: 0, y: 6)
                        
                    Image("ButtonReload")
                        .renderingMode(.original)
                }
            }
            .frame(width: buttonRadius, height: buttonRadius)
            
            }.background(
                colors.lightCreamBackground.value
                    .frame(width: buttonFramRadius, height: buttonFramRadius)
                    .clipShape(Circle())
        )
            .padding(.bottom, screenWidth / 9.2)
            .offset(y: 15)
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
           
            ZStack{
            topBackground
            VStack{
                Spacer()
                button
                }
            }
        }.background(background)
            
    }
}

struct MainBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GamesBackgroundV()
    }
}
//
