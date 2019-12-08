//
//  RoundButton.swift
//
//  Created by Tibor Leon Hahne on 17.10.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import UIKit


@IBDesignable class ExtendedButton: UIButton {
    
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
    
    @IBInspectable var adjustsFontSizeToFitWidth: Bool = false {
        didSet {
            self.titleLabel?.adjustsFontSizeToFitWidth = self.adjustsFontSizeToFitWidth
        }
    }
    
    func updateCornerRadius() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.rounded ? self.frame.size.height / 2 : 0
        self.layer.borderWidth = CGFloat(self.borderWidth)
        self.layer.borderColor = self.borderColor.cgColor
        self.layer.masksToBounds = self.maskToBounds
    }

}
