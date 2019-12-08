//
//  RoundButton.swift
//
//  Created by Tibor Leon Hahne on 17.10.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class ExtendedView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        self.updateCornerRadius()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = true {
        didSet {
            updateCornerRadius()
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
    
    @IBInspectable var cornerRadiusFactor: CGFloat = 2 {
        didSet {
            self.layer.cornerRadius = self.cornerRadiusFactor
        }
    }
    
    func updateCornerRadius() {
        self.clipsToBounds = true
        
        if self.rounded {
            self.layer.cornerRadius = self.cornerRadiusFactor
        }
        
        self.layer.borderWidth = CGFloat(self.borderWidth)
        self.layer.borderColor = self.borderColor.cgColor
        self.layer.masksToBounds = false
    }
    
}
