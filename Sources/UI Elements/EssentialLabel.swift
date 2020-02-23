//
//  RoundLabel.swift
//
//  Created by Tibor Leon Hahne on 23.10.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable open class EssentialLabel: UILabel {
    
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
    
    @IBInspectable var cornerRadiusFactor: CGFloat = 2 {
        didSet {
            self.layer.cornerRadius = self.cornerRadiusFactor
        }
    }
    
    @IBInspectable var lshadowColor: UIColor = UIColor.clear {
        didSet {
            self.layer.shadowColor = self.lshadowColor.cgColor
        }
    }
    
    @IBInspectable var lshadowOffset: CGSize = CGSize.zero {
        didSet {
            self.layer.shadowOffset = self.shadowOffset
        }
    }
    
    @IBInspectable var lshadowOpacity: Float = 0 {
        didSet {
            self.layer.shadowOpacity = self.lshadowOpacity
        }
    }
    
    @IBInspectable var lshadowRadius: Float = 0 {
        didSet {
            self.layer.shadowRadius = CGFloat(self.lshadowRadius)
        }
    }
    
    @IBInspectable var maskToBounds: Bool = true {
        didSet {
           self.layer.masksToBounds = self.maskToBounds
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
