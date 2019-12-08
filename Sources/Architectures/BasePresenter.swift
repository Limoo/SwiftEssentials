//
//  BasePresenter.swift
//
//  Created by Tibor Leon Hahne on 24.11.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import Foundation
import UIKit

class BasePresenter : BasePresenterProtocol {
    
    let view: UIView
    
    required init(view: UIView) {
        self.view = view
    }
    
}

protocol BasePresenterProtocol {
    
    init(view: UIView)
    
}

