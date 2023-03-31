//
//  UIView+Extension.swift
//  OnboardingPages
//
//  Created by Umut Asmaz on 28.03.2023.
//

import UIKit


extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        
        get {return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
