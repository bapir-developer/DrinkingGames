//
//  Circle.swift
//  FortuneWheel
//
//  Created by Amirreza Zarepour on 9/2/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Import
import SwiftUI

struct FortuneWheelV: View {
    
    //MARK: - Vars
    @State var toprightForegroundColor    = colors.fortunewheelOrange.value
    @State var topleftForegroundColor     = colors.fortunewheelGreen.value
    @State var bottomrightForegroundColor = colors.fortunewheelPink.value
    @State var bottomleftForegroundColor  = colors.fortinewheelBlue.value
    @State var radius:            CGFloat = CGFloat(273)
   
    private var challenges     = ["Drink 2 Sips before start",
                              "Choose another to drink 1 sip",
                              "Kiss a boy in your group",
                              "Kiss a girl in your group"]
    
    private var xOffset: CGFloat {
        get {
            radius / 1.96
        }
    }
    private var yOffset: CGFloat {
        get{
            xOffset + 1.5
        }
    }
    
    //MARK: - Views
    private var topright:    some View {
        ZStack{
            FortuneWheel(startAngle: .degrees(0), endAngle: .degrees(90), clockwise: true, quarter: .toprightQuarter)
                .frame(width: radius, height: radius)
                .foregroundColor(toprightForegroundColor)
                
            Text(challenges[0])
                .font(rubik.bold.with(Size: 16))
                .foregroundColor(.white)
                .frame(width: 110)
                .rotationEffect(.degrees(45))
                .offset(x: 60, y: -60)
               
        }
    }
    private var bottomright: some View {
        ZStack{
            FortuneWheel(startAngle: .degrees(90), endAngle: .degrees(-180), clockwise: true, quarter: .bottomrightQuarter)
                .frame(width: radius, height: radius)
                .foregroundColor(bottomrightForegroundColor)
            
            Text(challenges[1])
                .font(rubik.bold.with(Size: 16))
                .foregroundColor(.white)
                .frame(width: 110)
                .rotationEffect(.degrees(135))
                .offset(x: 60, y: 55)
                 
        }
    }
    private var topleft:     some View {
        ZStack{
           FortuneWheel(startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: true, quarter:  .topleftQuarter)
                .frame(width: radius, height: radius)
                .foregroundColor(topleftForegroundColor)
            
            Text(challenges[2])
                .font(rubik.bold.with(Size: 16))
                .foregroundColor(.white)
                .frame(width: 110)
                 .rotationEffect(.degrees(-45))
                .offset(x: -60, y: -60)
                
        }
    }
    private var bottomleft:  some View {
        ZStack{
            FortuneWheel(startAngle: .degrees(-180), endAngle: .degrees(-90), clockwise: true, quarter: .bottomleftQuarter)
                .frame(width: radius, height: radius)
                .foregroundColor(bottomleftForegroundColor)
            
            Text(challenges[3])
                .font(rubik.bold.with(Size: 16))
                .foregroundColor(.white)
                .frame(width: 110)
                .rotationEffect(.degrees(225))
                .offset(x: -55, y: 60)
        }
    }
    private var border:      some View {
        FortuneWheel(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true, quarter: .border)
             .stroke(Color.white, lineWidth: 8)
        .frame(width: radius + 1, height: radius + 1)
        .shadow(color: Color.black.opacity(0.5), radius: 16, x: 5, y: 5)
    }
  
    var body: some View {
        ZStack{
            
        VStack{
            ///top
            HStack{
                Spacer()
                topright
                    .offset(x: xOffset)
                topleft
                    .offset(x: -(xOffset))
                Spacer()
            }.offset(y: yOffset)
            ///bottom
            HStack{
                Spacer()
                bottomright
                    .offset(x: xOffset)
                bottomleft
                    .offset(x: -(xOffset))
                Spacer()
            }.offset(y: -yOffset)
            }.frame(width: radius, height: radius)
            
            border
        }.rotationEffect(.degrees(45))
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        FortuneWheelV()
    }
}
