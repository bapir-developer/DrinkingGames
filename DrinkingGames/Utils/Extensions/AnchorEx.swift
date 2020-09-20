//
//  AnchorExtension.swift
//  DrinkingGame
//
//  Created by cain on 3/11/20.
//  Copyright © 2020 cain. All rights reserved.
//
//MARK: - Imports
import UIKit

extension UIView {
    
    /// Description: anchor the view with regards to y center anchor and other needed constraint
    /// - Parameters:
    ///   - top: top anchor
    ///   - bottom: bottom anchor
    ///   - right: right anchor
    ///   - left: left anchor
    ///   - top_constant: wanted constant for the top anchor
    ///   - bottom_constant: wanted constant for the bottom anchor
    ///   - right_constant: wanted constant for the right anchor
    ///   - left_constant: wanted constant for the left anchor
    ///   - width_constant: wanted constant for the width anchor
    ///   - height_constant: wanted constant for the height anchor
    ///   - view: view that we want to set our x center anchor to its x center anchor
    ///   - y_constant: the wanted value for the x anchor
    public func anchorWithXCenter(top: NSLayoutYAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil,
                                  top_constant: CGFloat = 0, bottom_constant: CGFloat = 0,
                                  width_constant: CGFloat = 0, height_constant: CGFloat = 0,
                                  center_x_with view: UIView, x_constant: CGFloat = 0){
        
        anchor(top: top, bottom: bottom, right: nil, left: nil, top_constant: top_constant, bottom_constant: bottom_constant, right_constant: 0, left_constant: 0, width_constant: width_constant, height_constant: height_constant)
        
        
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: x_constant).isActive = true
        
    }
    
    /// Description: anchor the view with regards to y center anchor and other needed constraint
    /// - Parameters:
    ///   - top: top anchor
    ///   - bottom: bottom anchor
    ///   - right: right anchor
    ///   - left: left anchor
    ///   - top_constant: wanted constant for the top anchor
    ///   - bottom_constant: wanted constant for the bottom anchor
    ///   - right_constant: wanted constant for the right anchor
    ///   - left_constant: wanted constant for the left anchor
    ///   - width_constant: wanted constant for the width anchor
    ///   - height_constant: wanted constant for the height anchor
    ///   - view: view that we want to set our y center anchor to its y center anchor
    ///   - y_constant: the wanted value for the y anchor
    public func anchorWithYCenter(right: NSLayoutXAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil,
                                  right_constant: CGFloat = 0, left_constant: CGFloat = 0,
                                  width_constant: CGFloat = 0, height_constant: CGFloat = 0,
                                  center_y_with view: UIView, y_constant: CGFloat = 0){
        
        anchor(top: nil, bottom: nil, right: right, left: left, top_constant: 0, bottom_constant: 0, right_constant: right_constant, left_constant: left_constant, width_constant: width_constant, height_constant: height_constant)
        
        
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: y_constant).isActive = true
        
    }
    
    /// Description: anchor base on the four direction of view, top, bottom, right, left
    /// - Parameters:
    ///   - top: top anchor
    ///   - bottom: bottom anchor
    ///   - right: right anchor
    ///   - left: left anchor
    ///   - top_constant: wanted constant for the top anchor
    ///   - bottom_constant: wanted constant for the bottom anchor
    ///   - right_constant: wanted constant for the right anchor
    ///   - left_constant: wanted constant for the left anchor
    ///   - width_constant: wanted constant for the width anchor
    ///   - height_constant: wanted constant for the height anchor
    public func anchor(top: NSLayoutYAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil,
                       right: NSLayoutXAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil,
                       top_constant: CGFloat = 0, bottom_constant: CGFloat = 0,
                       right_constant: CGFloat = 0, left_constant: CGFloat = 0,
                       width_constant: CGFloat = 0, height_constant: CGFloat = 0){
        
       _ = anchorWithReturns(top: top, bottom: bottom, right: right, left: left, top_constant: top_constant, bottom_constant: bottom_constant, right_constant: right_constant, left_constant: left_constant, width_constant: width_constant, height_constant: height_constant)
        

    }
    
    /// Description: anchor base on the four direction of view, top, bottom, right, left
       /// - Parameters:
       ///   - top: top anchor
       ///   - bottom: bottom anchor
       ///   - right: right anchor
       ///   - left: left anchor
       ///   - top_constant: wanted constant for the top anchor
       ///   - bottom_constant: wanted constant for the bottom anchor
       ///   - right_constant: wanted constant for the right anchor
       ///   - left_constant: wanted constant for the left anchor
       ///   - width_constant: wanted constant for the width anchor
       ///   - height_constant: wanted constant for the height anchor
    public func anchorWithReturns(top: NSLayoutYAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil,
                       right: NSLayoutXAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil,
                       top_constant: CGFloat = 0, bottom_constant: CGFloat = 0,
                       right_constant: CGFloat = 0, left_constant: CGFloat = 0,
                       width_constant: CGFloat = 0, height_constant: CGFloat = 0) -> [NSLayoutConstraint]{
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        var anchors = [NSLayoutConstraint]()
        
        if let top = top {
            anchors.append(topAnchor.constraint(equalTo: top, constant: top_constant))
        }
        
        if let bottom = bottom {
            anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: -bottom_constant))
        }
        
        if let right = right {
            anchors.append(rightAnchor.constraint(equalTo: right, constant: -right_constant))
        }
        
        if let left = left {
            anchors.append(leftAnchor.constraint(equalTo: left, constant: left_constant))
        }
        
        if width_constant > 0 {
            anchors.append(widthAnchor.constraint(equalToConstant: width_constant))
        }
        
        if height_constant > 0 {
            anchors.append(heightAnchor.constraint(equalToConstant: height_constant))
        }
        
        anchors.forEach({$0.isActive = true})
        
        return anchors
    }
    
    /// Description: anchor views constraints base on another view center
    /// - Parameters:
    ///   - view: View which you want to set your constraint base on its center
    ///   - xConstant: the wanted value for the x anchor
    ///   - yConstant: the wanted value for the y anchor
    ///   - width: constant for the width constraint
    ///   - height: constant for the height constraint
    public func anchorCenter(center_with view: UIView, x_constant: CGFloat? = nil, y_constant: CGFloat? = nil, width: CGFloat, height: CGFloat){
        
        //set width and height
        self.translatesAutoresizingMaskIntoConstraints = false
        
        //set y ceneter
        if let y = y_constant{
            self.centerYAnchor.constraint(equalTo:view.centerYAnchor , constant: y).isActive = true
        }else{
            self.centerYAnchor.constraint(equalTo:view.centerYAnchor , constant: 0).isActive = true
        }
        
        //set x center
        if let x = x_constant{
            self.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: x).isActive = true
        }else{
            self.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        }
        anchorHeight(value: height)
        anchorWidth(value: width)
    
        
    }
    
    /// Description: for setting height constraint of the view
    /// - Parameter value: the wanted constant for height constraint
    public func anchorHeight(value: CGFloat){
       anchorSingleConstraint(attribute: .height, value: value)
    }
    
    /// Description: for setting width constraint of the view
    /// - Parameter value: the wanted constant fo the width constraint
    public func anchorWidth(value: CGFloat){
        anchorSingleConstraint(attribute: .width, value: value)
    }
    
     /// Description: for setting width constraint of the view
     /// - Parameter value: the wanted constant fo the width constraint and height constraint
    public func anchorWidthAndHeight(width: CGFloat, height: CGFloat){
        anchorSingleConstraint(attribute: .width, value: width)
        anchorSingleConstraint(attribute: .height, value: height)
    }
    
    /// Description: Function is helping to setting stand alone constraint
    /// - Parameters:
    ///   - attribute: The Wanted Attribute
    ///   - value: The Value you want to set
    public func anchorSingleConstraint(attribute: NSLayoutConstraint.Attribute, value: CGFloat){
        
        removeSingleConstraint(attribute: attribute)
        
        self.translatesAutoresizingMaskIntoConstraints = false

        let constraint = NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: value)
        
        self.addConstraint(constraint)
    }
    
    /// Description: for being sure you are not setting an existing constraint
    /// - Parameter attribute: Wanted Constraint Attribut
    fileprivate func removeSingleConstraint(attribute: NSLayoutConstraint.Attribute){
        for constraint in constraints{
            if constraint.firstAttribute == attribute{
                removeConstraint(constraint)
            }
        }
    }
}
