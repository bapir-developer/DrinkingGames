//
//  PlayerTouch.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/21/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct PlayerTouchButton: View{
    
    //MARK: - Vars
    var outerColor: Color
    var innerColor: Color
    
    @State private var animationAmount: CGFloat = 1
    @Binding var pressed: Bool
    
    //MARK: - Views
    private var outerBorderCirle: some View {
        let side:  CGFloat = Device.model == device.Six_6S_7_8_SE ? 108.6 : 146
     
        return Circle()
            .stroke(outerColor, lineWidth: 6)
            .frame(width: side, height: side)
            .shadow(color: Color.black.opacity(0.3) ,radius: 8 , x: 0, y: 0)
    }
    private var innerBorderCirle: some View {
        let side:  CGFloat = Device.model == device.Six_6S_7_8_SE ? 80.3 : 108
       
        return Circle()
            .stroke(innerColor, lineWidth: 20)
            .frame(width: side, height: side)
    }
    private var touchCirle:       some View {
        let side:  CGFloat = Device.model == device.Six_6S_7_8_SE ? 71.7 : 96
        
        return Circle()
            .foregroundColor(colors.darkCream.value)
            .shadow(color: colors.touchCream.value, radius: 18, x: 0, y: 6)
            .frame(width: side, height: side)
            .scaleEffect(self.pressed ? 1.2 : 1.0)
            .onLongPressGesture(minimumDuration: .infinity, maximumDistance: .infinity, pressing: { pressing in
                withAnimation(.easeInOut(duration: 0.2)) {
                    self.pressed = pressing
                }
            }, perform: { })
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            outerBorderCirle
            innerBorderCirle
            touchCirle
        }
    }
}

struct PlayerTouch_Previews: PreviewProvider {
    static var previews: some View {
        PlayerTouchButton(outerColor: colors.touchYellowOuter.value, innerColor: colors.touchYellowInner.value, pressed: .constant(false))
    }
}
