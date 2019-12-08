//
//  UIView+.swift
//
//  Created by Tibor Leon Hahne on 23.10.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    static func loadFromStoryboard(identifier:String = "Main") -> Self {
        return UIStoryboard.instantiateViewController(type: self, storyboardIdentifier: identifier)
    }
    
}

