//
//  GradientViewButton.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/25/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct GradientButton: View {
    
    //MARK: - Vars
   
    
    //MARK: - View
    private var gradientBackground: some View{
        let centerColor = Color(red: 237 / 255, green: 175 / 255, blue: 67 / 255)
        let sideColor   = Color(red: 235 / 255, green: 141 / 255, blue: 31 / 255)
        let gradient    = Gradient(colors: [centerColor, sideColor])
        let rect        = RadialGradient(gradient: gradient, center: .center, startRadius: 1, endRadius: 50)
        
        return Rectangle()
            .fill(rect)
            .frame(width: 300, height: 60)
            .cornerRadius(30)
        
        
    }
    private var text:               some View{
        Text("Start")
            .font(rubik.medium.with(Size: 32))
            .foregroundColor(.white)
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            gradientBackground
            text
        }
    }
}

struct GradientViewButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton()
            .previewLayout(.fixed(width: 300, height: 65))
    }
}
