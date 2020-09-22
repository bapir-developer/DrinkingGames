//
//  ModeSelectionMainV.swift
//  DrinkingGames
//
//  Created by Amirreza Zarepour on 9/22/20.
//

import SwiftUI

struct ModeSelectionMainV: View {
    
    @Binding var acColor: Color
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ModeSelectionMainV_Previews: PreviewProvider {
    static var previews: some View {
        ModeSelectionMainV(acColor: .constant(Color.black))
    }
}
