//
//  UIImage+.swift
//
//  Created by Tibor Leon Hahne on 22.03.19.
//  Copyright © 2019 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    static func load(fromUrl urlString: String?) -> UIImage? {
        
        guard let string = urlString, let url = URL(string: string) else {
            return nil
        }
        
        if let data = try? Data(contentsOf: url) {
            if let image = UIImage(data: data) {
                return image
            }
        }
        return nil
    }
            
}
