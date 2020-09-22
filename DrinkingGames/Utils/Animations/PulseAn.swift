//
//  PulseAnimation.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/16/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import SwiftUI
import Foundation

let pulse = Animation.easeInOut.repeatForever(autoreverses: true)
let touchpulse = Animation.linear.repeatForever(autoreverses: true)
///you should implement scale effect from 0.9 to 1.1 for the view and call .animation(pulse)
