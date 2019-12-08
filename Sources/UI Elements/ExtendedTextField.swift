//
//  BaseTextField.swift
//
//  Created by Tibor Leon Hahne on 29.11.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import UIKit

class ExtendedTextField: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.backgroundColor = ThemeService.shared.backgroundTheme.color
    }

}
