//
//  BaseTextField.swift
//
//  Created by Tibor Leon Hahne on 29.11.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import UIKit

@IBDesignable open class EssentialTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override open func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        self.updateCornerRadius()
    }

    override open func layoutSubviews() {
        super.layoutSubviews()
        self.updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            self.updateCornerRadius()
        }
    }
    
    @IBInspectable var borderWidth: Float = 0 {
        didSet {
            self.layer.borderWidth = CGFloat(self.borderWidth)
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet {
            self.layer.shadowColor = self.shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize.zero {
        didSet {
            self.layer.shadowOffset = self.shadowOffset
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0 {
        didSet {
            self.layer.shadowOpacity = self.shadowOpacity
        }
    }
    
    @IBInspectable var shadowRadius: Float = 0 {
        didSet {
            self.layer.shadowRadius = CGFloat(self.shadowRadius)
        }
    }
    
    @IBInspectable var maskToBounds: Bool = true {
        didSet {
           self.layer.masksToBounds = self.maskToBounds
        }
    }
        
    @IBInspectable var cornerRadiusFactor: CGFloat = 2 {
        didSet {
            self.layer.cornerRadius = self.cornerRadiusFactor
        }
    }

    func updateCornerRadius() {
        let width = self.frame.size.width
        let height = self.frame.size.height
        let size = width > height ? height : width
        self.layer.cornerRadius = self.rounded ? size / self.cornerRadiusFactor : 0
        self.layer.borderWidth = CGFloat(self.borderWidth)
        self.layer.borderColor = self.borderColor.cgColor
        self.layer.masksToBounds = self.maskToBounds
    }
}
