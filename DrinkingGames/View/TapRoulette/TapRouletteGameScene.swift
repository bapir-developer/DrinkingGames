//
//  GameScene.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/21/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Import
import SwiftUI

struct TapRouletteGameScene: View {
    
    //MARK: - Vars
    @Binding var numberOfPeople: Int
    
    @State var offset                  = 0
    @State var chosen                  = -1
    @State private var buttonIsPressed = [false, false, false, false]
    
    let outerColors = [colors.touchYellowOuter.value,
                       colors.touchGreenOuter.value,
                       colors.touchRedOuter.value,
                       colors.touchBlueOuter.value]
    let innerColors = [colors.touchYellowInner.value,
                       colors.touchGreenInner.value,
                       colors.touchRedInner.value,
                       colors.touchBlueInner.value]
    
    private var height: CGFloat {
        switch Device.model! {
            case .Six_6S_7_8_SE:
                return 342.0
            case .SixPlus_6SPlus_7Plus_8Plus:
                return 378.0
            case .X_Xs_11Pro:
                return 416.0
            case .XSMax_11ProMax_Xr_11:
                return 459.0
        }
    }
    
    
    //MARK: - Views
    private var touch1: some View {
        PlayerTouchButton(outerColor: outerColors[0], innerColor: innerColors[0], pressed: $buttonIsPressed[0]  )
            .opacity(chosen == 0 ? 0 : 1)
    }
    private var touch2: some View {
        PlayerTouchButton(outerColor: outerColors[1], innerColor: innerColors[1], pressed: $buttonIsPressed[1])
             .opacity(chosen == 0 ? 0 : 1)
    }
    private var touch3: some View {
        PlayerTouchButton(outerColor: outerColors[2], innerColor: innerColors[2], pressed: $buttonIsPressed[2])
             .opacity(chosen == 0 ? 0 : 1)
    }
    private var touch4: some View {
        PlayerTouchButton(outerColor: outerColors[3], innerColor: innerColors[3], pressed: $buttonIsPressed[3])
             .opacity(chosen == 0 ? 0 : 1)
    }
    
    //MARK: - MainBody
    var body: some View {
      gamePlay()
      return VStack(spacing: Device.model! == .X_Xs_11Pro ? 20 : 40){
        
            HStack{
                Spacer()
                touch1
                    
                touch2
                    .offset(y: Device.model! == .Six_6S_7_8_SE &&
                    numberOfPeople > 2 ? -40 : -50)
                Spacer()
            }
            HStack{
                if numberOfPeople > 2{
                    Spacer()
                    touch3
                        .offset(x: numberOfPeople == 3 ? -40 : 0, y: numberOfPeople == 3 ? -40 : 0)
                }
                if numberOfPeople > 3 {
                    touch4
                    .offset(y:-50)
                    Spacer()
                }
            }
            }.frame(height: height)
            .padding(.leading, 10)
            .padding(.trailing, 10)
    }
    
    //TODO: - convert the action into viemodel
    private func gamePlay(){
        switch numberOfPeople {
            case 2:
                if buttonIsPressed[0] && buttonIsPressed[1]{
                    self.chosen = Int.random(in: 0...1)
                }
            case 3:
                if buttonIsPressed[0] && buttonIsPressed[1] && buttonIsPressed[2]{
                    self.chosen = Int.random(in: 0...2)
                }
            case 4:
                if buttonIsPressed[0] && buttonIsPressed[1] && buttonIsPressed[2]
                && buttonIsPressed[3]{
                    self.chosen = Int.random(in: 0...3)
                }
            default:
                print("not valid")
        }
    }
}

struct GameScene_Previews: PreviewProvider {
    static var previews: some View {
        TapRouletteGameScene(numberOfPeople: .constant(4))
    }
}

