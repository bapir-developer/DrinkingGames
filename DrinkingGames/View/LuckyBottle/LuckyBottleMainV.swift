//
//  LuckyBottleMainView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/15/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI
import UIKit

struct LuckyBottleMainV: View{

    //MARK: - Vars
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isRotating            = false
    @State private var numberofturns         = 5
    @State private var finalAngle: Double    = 0
    @State private var initialAngle: Double  = 0
    
    
    //MARK: - Views
    private var background:  some View {
        var bc = GamesBackgroundV()
        bc.delegate = self
        return bc
    }
    private var luckyBottle: some View {
        var height: CGFloat = 300
        var width:  CGFloat = 187.5
        
        if Device.model! == .X_Xs_11Pro {
            height = 260
            width  = 156.25
        }
    
        return  Image("ImageLuckyBottle")
            .resizable()
            .frame(width: width, height: height)
            .rotationEffect(.degrees(isRotating ? initialAngle : finalAngle), anchor: .center)
            .animation(Animation.easeOut.speed(0.1))
            .offset(y: -80)
            .animation(nil)
            .onTapGesture {
                 self.isRotating.toggle()
        }
    }
    private var backButton : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
            Image("ButtonBack")
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
            }
        }
    }
    private var title:       some View {
        Text("Lucky Bottle")
            .font(rubik.black.with(Size: 32))
            .foregroundColor(colors.darkBrownTitle.value)
            .offset(y: -93)
    }
        
    var body: some View {
        ZStack{
            background
            VStack{
                title
                Spacer()
                luckyBottle
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
    
    func numberOfTurns() -> Int {
        numberofturns = Int.random(in: 5...10)
        return numberofturns
    }
}

extension LuckyBottleMainV: ButtonActionDelegate {
        func buttonTapAction() {
            initialAngle = finalAngle
            finalAngle = Double(360 * Float.random(in: 1...5) * 2)
            self.isRotating.toggle()
            self.isRotating.toggle()
           
        }
}

struct LuckyBottleMainV_Previews: PreviewProvider {
    static var previews: some View {
        LuckyBottleMainV()
    }
}
