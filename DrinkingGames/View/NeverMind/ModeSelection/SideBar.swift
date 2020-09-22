//
//  SideBar.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/31/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct SideBar: View {
    
    //MARK: - Vars
    @State private var isNopeSelected              = true
    @State private var isCustomSelected            = false
    @State private var isSillySelected             = false
    @State private var isHotSelected               = false
    @State private var isSpringBreak               = false
    @Binding var selectedMode: NevermindMode
    @Binding var animationEffect: Bool
    //TODO: - SelectionMode
    
    //MARK: - Views
    private var background:      some View {
        colors.darkBrownBackground.value
            .edgesIgnoringSafeArea(.all)
    }
    private var divider:         some View {
        colors.modeSelectionDivider.value
            .frame(width: 2)
    }
    private var nopeIcon:        some View {
        ZStack{
            Image( isNopeSelected ? "nopeSelectedIcon" : "nopeIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .animation(.easeIn)
        }.frame(width: 60, height: 60)
         .background(isNopeSelected ? colors.selectedMode.value : Color.clear)
         .clipShape(Circle())
         .animation(.easeIn)
         .onTapGesture {
                 if !self.isNopeSelected{
                    self.changeMode(self.selectedMode)
                    self.isNopeSelected = true
                    self.selectedMode = .Nope
                    withAnimation {
                         self.animationEffect.toggle()
                     }
                }
         }
    }
    private var customIcon:      some View {
        ZStack{
        Image(isCustomSelected ? "customSelectedIcon" : "customIcon")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .animation(.easeIn)
        }.frame(width: 60, height: 60)
         .background(isCustomSelected ? colors.selectedMode.value : Color.clear)
         .clipShape(Circle())
         .animation(.easeIn)
         .onTapGesture {
            if !self.isCustomSelected{
                    self.changeMode(self.selectedMode)
                    self.isCustomSelected = true
                    self.selectedMode = .Custom
                    withAnimation {
                        self.animationEffect.toggle()
                     }
            }
               }
    }
    private var sillyIcon:       some View {
        ZStack{
            Image(isSillySelected ? "sillySelectedIcon" : "sillyIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .animation(.easeIn)
            }.frame(width: 60, height: 60)
            .background(isSillySelected ? colors.selectedMode.value : Color.clear)
            .clipShape(Circle())
            .animation(.easeIn)
            .onTapGesture {
                if !self.isSillySelected{
                self.changeMode(self.selectedMode)
                self.isSillySelected = true
                self.selectedMode = .Silly
                withAnimation {
                    self.animationEffect.toggle()
                }
                }
            }
    }
    private var hotIcon:         some View {
        ZStack{
        Image(isHotSelected ? "hotSelectedIcon" : "hotIcon")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .animation(.easeIn)
        }.frame(width: 55, height: 55)
        .background(isHotSelected ? colors.selectedMode.value : Color.clear)
        .clipShape(Circle())
        .animation(.easeIn)
        .onTapGesture {
            if !self.isHotSelected{
            self.changeMode(self.selectedMode)
            self.isHotSelected = true
            self.selectedMode = .Hot
            withAnimation {
                self.animationEffect.toggle()
                }
            }
        }
    }
    private var springBreakIcon: some View {
        ZStack{
            Image(isSpringBreak ? "springbreakSelectedIcon" : "springbreakIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .animation(.easeIn)
        }.frame(width: 60, height: 60)
        .background(isSpringBreak ? colors.selectedMode.value : Color.clear)
        .clipShape(Circle())
        .animation(.easeIn)
        .onTapGesture {
            if !self.isSpringBreak{
            self.changeMode(self.selectedMode)
            self.isSpringBreak = true
            self.selectedMode = .SpringBreak
            withAnimation {
                self.animationEffect.toggle()
            }
            }
        }
    }
    
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
            
            HStack{
                Spacer()
                
                VStack{
                    Group{
                        Spacer()
                        nopeIcon
                        
                        Spacer()
                        customIcon
                        
                        Spacer()
                        sillyIcon
                    }
                    Group{
                        Spacer()
                        hotIcon
                        
                        Spacer()
                        
                        springBreakIcon
                        Spacer()
                    }
                }
                Spacer()
                divider
            }
        }.frame(width: Device.model! == .Six_6S_7_8_SE ? 56 : 66, height: Device.model! == .Six_6S_7_8_SE ? 550 : 650)
    }
    
    private func changeMode(_ mode: NevermindMode){
        switch mode {
            case .Custom:
                isCustomSelected = false
            case .Hot:
                isHotSelected = false
            case .Nope:
                isNopeSelected = false
            case .Silly:
                isSillySelected = false
            case .SpringBreak:
                isSpringBreak = false
        }
        self.animationEffect.toggle()
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar(selectedMode: .constant(.Nope), animationEffect: .constant(false))
            //
            .previewLayout(.sizeThatFits)
    }
}
