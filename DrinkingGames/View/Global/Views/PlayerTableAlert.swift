//
//  AddMorePlayerAlert.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/30/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Import
import SwiftUI

struct PlayerTableAlert: View {
    
    //MARK: - Vars
    @Binding var isUniqueNamesAlert: Bool
    @Binding var shown: Bool
    
    //MARK: - Views
    private var background: some View {
        colors.addPlayerAlertColor.value
            .edgesIgnoringSafeArea(.all)
    }
    private var message:    some View {
        Text(isUniqueNamesAlert ? "Names should be unique" : "At least add 2 players")
            .font(Font.system(size: 15))
            .foregroundColor(.white)
    }
    private var divider:    some View {
        Color.white.opacity(0.5)
            .frame(height: 0.3)
            .offset(y: 5)
           
    }
    private var dismissBtn: some View {
        Button(action: {
            if self.isUniqueNamesAlert{
                self.isUniqueNamesAlert.toggle()
            }
            self.shown.toggle()
        }) {
            Text("OK")
        }
    }
    
    //MARK: - MainBody
    var body: some View {
        ZStack{
            background
            
            VStack{
                Spacer()
                message
                Spacer()
                divider
                Spacer()
                dismissBtn
                Spacer()
            }
            
        }.frame(width: 200, height: 100)
        .cornerRadius(10)
        
    }
}

struct AddMorePlayerAlert_Previews: PreviewProvider {
    static var previews: some View {
        PlayerTableAlert(isUniqueNamesAlert: .constant(false), shown: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}

