//
//  UIView+.swift
//
//  Created by Tibor Leon Hahne on 25.10.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {

    class func loadFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
    
    func setCornerRadiusFactor(factor: CGFloat) {
        self.layer.cornerRadius = self.frame.size.height / factor
    }
    
    func edges(to view: UIView, top: CGFloat=0, left: CGFloat=0, bottom: CGFloat=0, right: CGFloat=0) {
        NSLayoutConstraint.activate([
            self.leftAnchor.constraint(equalTo: view.leftAnchor, constant: left),
            self.rightAnchor.constraint(equalTo: view.rightAnchor, constant: right),
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: top),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottom)
            ])
    }
    
}


