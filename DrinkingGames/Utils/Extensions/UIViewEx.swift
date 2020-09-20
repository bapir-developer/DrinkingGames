//
//  UIex.swift
//  test
//
//  Created by Amirreza Zarepour on 8/29/20.
//  Copyright © 2020 Amirreza Zarepour. All rights reserved.
//
//MARK: - Imports
import UIKit

extension UIView {
    public func drawDottedLine(start p0: CGPoint, end p1: CGPoint) {
           let shapeLayer = CAShapeLayer()
           shapeLayer.strokeColor = #colorLiteral(red: 0.8078431373, green: 0.662745098, blue: 0.5058823529, alpha: 1).cgColor
           shapeLayer.lineWidth = 0.75
           shapeLayer.lineDashPattern = [2, 2] // the first is the length of dash, second is length of the gap.

           let path = CGMutablePath()
           path.addLines(between: [p0, p1])
           shapeLayer.path = path
           self.layer.addSublayer(shapeLayer)
       }
}
