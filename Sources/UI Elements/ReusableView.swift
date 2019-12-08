//
//  ReusableView.swift
//
//  Created by Tibor Leon Hahne on 10.01.19.
//  Copyright © 2019 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

class ReusableView : UIView {
    
    var contentView:UIView?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.xibSetup()
        self.updateUserInterface()
    }
    
    func nibNameForView() -> String {
        return ""
    }
        
    func updateUserInterface() {
        
    }
    
    func xibSetup() {
        guard let view = self.loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask =
            [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
        self.contentView = view
    }
    
    func loadViewFromNib() -> UIView? {
        let nibName = self.nibNameForView()
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(
            withOwner: self,
            options: nil).first as? UIView
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.xibSetup()
        self.sharedInit()
        self.contentView?.prepareForInterfaceBuilder()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
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
            self.layer.shouldRasterize = true
            self.layer.rasterizationScale = UIScreen.main.scale
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
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.rounded ? self.frame.size.height / self.cornerRadiusFactor : 0
        self.contentView?.layer.cornerRadius = self.rounded ? self.frame.size.height / self.cornerRadiusFactor : 0
        
        self.contentView?.clipsToBounds = true
        self.contentView?.layer.shadowOffset = self.shadowOffset
        self.contentView?.layer.shadowRadius = CGFloat(self.shadowRadius)
        self.contentView?.layer.shadowOpacity = self.shadowOpacity
    }
    
    
}
