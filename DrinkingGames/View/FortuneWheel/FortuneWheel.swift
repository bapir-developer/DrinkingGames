//
//  Arc.swift
//  FortuneWheel
//
//  Created by Amirreza Zarepour on 9/2/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//

import SwiftUI

struct FortuneWheel: Shape {
    var startAngle: Angle
    var endAngle:   Angle
    var clockwise:  Bool
    var quarter:    FortuneWheelPiece
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment  = Angle.degrees(90)
         let modifiedStartAngle = startAngle - rotationAdjustment
         let modifiedEndAngle   = endAngle   - rotationAdjustment
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStartAngle, endAngle: modifiedEndAngle, clockwise: !clockwise)
        
        switch quarter {
            case .toprightQuarter:
                path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
                path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            case .topleftQuarter:
                path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
                path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            case .bottomleftQuarter:
                path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
                path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            case .bottomrightQuarter:
                path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            
            case .border:
                path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
                path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
                path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            

        }
        
        path.closeSubpath()
        
        
        
        return path
    }
}
