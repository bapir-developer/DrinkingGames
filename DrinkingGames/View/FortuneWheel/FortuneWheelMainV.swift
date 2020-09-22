//
//  FortuneWheelMainView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/15/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct FortuneWheelMainV: View {
    
    //MARK: - Vars
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isRotating            = false
    @State private var numberofturns         = 5
    @State private var finalAngle: Double    = 0
    @State private var initialAngle: Double  = 0
    
    //MARK: - Views
    private var title:        some View {
        Text("Fortune Wheel")
            .font(rubik.black.with(Size: 32))
            .foregroundColor(colors.darkBrownTitle.value)
            .offset(y: -93)
    }
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
                //.foregroundColor(.white)
                
                
            }
        }
    }
    private var fortuneWheel: some View {
        
        let height: CGFloat = 433
        let width:  CGFloat = 380
        
        
        return Image("FortuneWheel")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height)
            .offset(y: -80)
    }
    private var options:      some View {
             FortuneWheelV()
                .clipShape(Circle())
                .frame(width: 350, height: 350)
                .rotationEffect(.degrees(isRotating ? initialAngle : finalAngle), anchor: .center)
                .animation(Animation.easeOut.speed(0.1))
                .offset(y: -97)
                .onTapGesture {
                    self.isRotating.toggle()
                }
    }
    private var spinButton:   some View {
        Button(action: {
            print("op")
            self.initialAngle = self.finalAngle
            self.finalAngle   = Double(360 * Float.random(in: 1...5) * 2)
            self.isRotating.toggle()
            self.isRotating.toggle()
        }) {
            Image("redspinbutton")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
               
            
        }
         .offset(y: -125)
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
           
            VStack{
                title
                Spacer()
                ZStack{
                    options
                    
                    fortuneWheel
                }.offset(y: Device.model! == .X_Xs_11Pro ? -90 : -50)
                Spacer()
                }
                spinButton
            
        }.navigationBarBackButtonHidden(true)
         .navigationBarItems(leading: backButton)
            
    }
    
    //MARK: - Functions
    func numberOfTurns() -> Int {
            numberofturns = Int.random(in: 5...10)
        return numberofturns
    }
}

extension FortuneWheelMainV: ButtonActionDelegate{
    func buttonTapAction() {
        initialAngle = finalAngle
        finalAngle = Double(360 * Float.random(in: 1...5) * 2)
        self.isRotating.toggle()
        self.isRotating.toggle()
    }

}

struct FortuneWheelMainView_Previews: PreviewProvider {
    static var previews: some View {
        FortuneWheelMainV()
    }
}
