//
//  Devices.swift
//  ProjectDrinkGame
//
//  Created by Amirreza Zarepour on 8/22/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
import UIKit
import Foundation

typealias device = Device.SizeClass

enum Device{
    enum SizeClass{
        case XSMax_11ProMax_Xr_11
        case X_Xs_11Pro
        case SixPlus_6SPlus_7Plus_8Plus
        case Six_6S_7_8_SE
       
        
        var width:  Int {
            get{
                switch self {
                    case .XSMax_11ProMax_Xr_11, .SixPlus_6SPlus_7Plus_8Plus:
                        return 414
                    case .X_Xs_11Pro, .Six_6S_7_8_SE:
                        return 375
                }
            }
        }
        var height: Int {
            switch self {
                case .XSMax_11ProMax_Xr_11:
                    return 896
                case .X_Xs_11Pro:
                    return 812
                case .SixPlus_6SPlus_7Plus_8Plus:
                    return 736
                case .Six_6S_7_8_SE:
                    return 667
            }
        }
    }
    
    static var model: SizeClass?{
          get{
              if screenWidth == 414 && screenHeight == 896 {
                  return .XSMax_11ProMax_Xr_11
              }
              
              if screenWidth == 375 && screenHeight == 812 {
                  return .X_Xs_11Pro
              }
              
              if screenWidth == 414 && screenHeight == 736 {
                  return .SixPlus_6SPlus_7Plus_8Plus
              }
              
              if screenWidth == 375 && screenHeight == 667 {
                  return .Six_6S_7_8_SE
              }
              
              return nil
              
          }
      }
}

