//
//  RoundLabel.swift
//
//  Created by Tibor Leon Hahne on 23.10.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class ExtendedLabel: UILabel {
    
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
    
    @IBInspectable var cornerRadiusFactor: CGFloat = 2 {
        didSet {
            self.layer.cornerRadius = self.cornerRadiusFactor
        }
    }
    
    func updateCornerRadius() {
        self.clipsToBounds = true
        let width = self.frame.size.width
        let height = self.frame.size.height
        let size = width > height ? height : width
        self.layer.cornerRadius = self.rounded ? size / self.cornerRadiusFactor : 0
        self.layer.borderWidth = CGFloat(self.borderWidth)
        self.layer.borderColor = self.borderColor.cgColor
    }
    
}
