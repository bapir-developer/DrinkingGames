//
//  BlurView.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/14/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import SwiftUI

struct VisualEffectV: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        VisualEffectV()
    }
}

