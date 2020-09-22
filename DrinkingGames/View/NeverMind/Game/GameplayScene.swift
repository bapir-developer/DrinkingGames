//
//  GameplayScene.swift
//  DrinkingGames
//
//  Created by Amirreza Zarepour on 9/22/20.
//

import SwiftUI

struct GameplayScene: View {
    @Binding var mode: NevermindMode
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GameplayScene_Previews: PreviewProvider {
    static var previews: some View {
        GameplayScene(mode: .constant(.Hot))
    }
}
