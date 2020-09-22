//
//  SelectedModeReview.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/31/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct SelectedModeReview: View {
    
    //MARK: - Vars
    @Binding var mode: NevermindMode
    @Binding var animationMode: Bool
    @Binding var acColor: Color
    
    //MARK: - Views
    private var background:   some View {
        colors.selectmodeReviewbc.value.opacity(0.1)
    }
    private var title:        some View {
        Text(mode.title)
            .font(rubik.medium.with(Size: 24))
            .foregroundColor(colors.selectmodeReviewText.value)
            .offset(y: 15)
    }
    private var description:  some View {
        Text(mode.description)
            .font(rubik.regular.with(Size: 18))
            .foregroundColor(colors.selectmodeReviewText.value.opacity(0.6))
            .frame(maxWidth: 250)
            .offset(y: 30)
    }
    private var image:        some View {
        Image(mode.image)
            .resizable()
            .frame(minWidth: 155, maxWidth: 234, minHeight: 123, maxHeight: 247)
            .scaledToFit()
            .offset(y: Device.model! == .Six_6S_7_8_SE ? 60 : 100)
    }
    private var playButton:   some View {
        PlayButton(gameMode: $mode, acColor: $acColor)
            .padding(.bottom, Device.model! == .Six_6S_7_8_SE ? 5 : 20)
            
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
            
            VStack{
                Group{
                title
                
                
                description
                
                image
                }.opacity(animationMode ? 0 : 1)
                .scaleEffect(animationMode ? 0 : 1, anchor: .topTrailing)
                .animation(Animation.easeIn(duration: 0.5), value: animationMode)

                Spacer()
                playButton
                    
                
                
            }
        }.frame(width: Device.model! == .Six_6S_7_8_SE ? 260 : 280, height: Device.model! == .Six_6S_7_8_SE ? 550 : 650)
        .edgesIgnoringSafeArea(.all)
        .cornerRadius(18)
    }
}

struct SelectedModeReview_Previews: PreviewProvider {
    static var previews: some View {
        SelectedModeReview(mode: .constant(.Nope), animationMode: .constant(false), acColor: .constant(.red))
            .previewLayout(.sizeThatFits)
            .background(colors.darkBrownBackground.value)
    }
}
