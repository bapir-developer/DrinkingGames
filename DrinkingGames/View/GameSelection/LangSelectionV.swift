//
//  LangSelection.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/13/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI

struct LangSelectionV: View {
    
    //MARK: - Vars
    @Binding var selectingMode: Bool
    @Binding var lang:          language
   
    //MARK: - Views
    private var selectionButton: some View {
        Button(action: {
            self.selectingMode = true
        }) {
            Image(lang.flag())
                .renderingMode(.original)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(colors.langSelectionBorder.value, lineWidth: 2))
                .frame(width: 40, height: 40)
        }
    }
    private var langsContainer:  some View {
        ZStack{
            Group{
                colors.selectmodeReviewbc.value
                    .frame(width: 55, height: 130)
                    .cornerRadius(30)
            }
            Group{
                Image("pointer")
                    .padding(.leading, -33)
            }
            
            //LangSelection Buttons
            VStack{
                Button(action: {
                    self.selectingMode = false
                    self.lang = .UK
                    saveLang(.UK)
                }) {
                    Image(language.UK.flag())
                        .renderingMode(.original)
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color(red: 252 / 255, green: 172 / 255, blue: 78 / 255), lineWidth: 1.5))
                        .frame(width: 30, height: 30)
                }
                
                Button(action: {
                    self.selectingMode = false
                    self.lang          = .France
                    saveLang(.France)
                }) {
                    Image(language.France.flag())
                        .renderingMode(.original)
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(colors.langSelectionBorder.value, lineWidth: 1.5))
                        .frame(width: 30, height: 30)
                }
                
                Button(action: {
                    self.selectingMode = false
                    self.lang          = .Germany
                    saveLang(.Germany)
                }) {
                    Image(language.Germany.flag())
                        .renderingMode(.original)
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(colors.langSelectionBorder.value, lineWidth: 1.5))
                        .frame(width: 30, height: 30)
                }
            }
            
        }.edgesIgnoringSafeArea(.all)
    }

    //MARK: - MainBody
    var body: some View {
        ZStack{
            HStack{
                selectionButton
                
                if selectingMode{
                    langsContainer
                }
                
                Spacer()
            }
        }
    }
}
    
struct LangSelection_Previews: PreviewProvider {
    static var previews: some View {
        LangSelectionV(selectingMode: .constant(true), lang: .constant(.UK))
            .previewLayout(.sizeThatFits)
            
    }
}


