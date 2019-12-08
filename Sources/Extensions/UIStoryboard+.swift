//
//  UIStoryboard+.swift
//
//  Created by Tibor Leon Hahne on 23.10.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    
    static func instantiateViewController <T: UIViewController>(type: T.Type, storyboardIdentifier: String) -> T {
        let storyboard = UIStoryboard(name: storyboardIdentifier, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as! T
    }
    
}
