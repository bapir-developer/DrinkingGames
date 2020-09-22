//
//  ModeSelectionView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/25/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct ModeSelectionMainV: View {

    //MARK: - Vars
    @State private var selectedMode: NevermindMode = .Nope
    @State private var animationMode               = false
    @Binding var acColor: Color
    //MARK: - Views
    private var background: some View {
        colors.darkBrownBackground.value
            .edgesIgnoringSafeArea(.all)
    }
    private var sidebar:    some View {
        SideBar(selectedMode: $selectedMode,animationEffect: $animationMode)
        .offset(x: 16)
    }
    private var reviw:      some View {
        SelectedModeReview(mode: $selectedMode, animationMode: $animationMode, acColor: $acColor)
            .offset(x:  Device.model! == .Six_6S_7_8_SE ? 10 : 0)
    }

    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
            HStack{
                sidebar
                Spacer()
                
                reviw
                Spacer()
            }
        }
    }
}

struct ModeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ModeSelectionMainV(acColor: .constant(.yellow))
    }
}

    
    
