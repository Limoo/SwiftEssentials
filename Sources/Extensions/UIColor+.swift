//
//  UIColor+.swift
//
//  Created by Tibor Leon Hahne on 19.04.19.
//  Copyright © 2019 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return (red, green, blue, alpha)
    }
        
}
