//
//  BottobBar.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/14/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct BottomBar: View {
    
    //MARK: - Views
    private var feedbackButton: some View{
        Button(action: {
            print("Feedback")
        }) {
            Image("ButtonFeedback")
                .renderingMode(.original)
        }
    }
    private var rateButton:     some View{
        Button(action: {
            print("Rate")
        }) {
            Image("ButtonRateApp")
                .renderingMode(.original)
        }
    }
    private var shareButton:    some View{
        Button(action: {
            print("Share")
        }) {
            Image("ButtonShareApp")
                .renderingMode(.original)
        }
    }
    
    //MARK: - MainBody
    var body: some View {
        HStack(spacing: 20){
            feedbackButton
            rateButton
            shareButton
        }
    }
}

struct BottobBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
            .previewLayout(.sizeThatFits)
            .background(colors.darkBrownBackground.value)
            //.environment(\.@Env, )
    }
}
