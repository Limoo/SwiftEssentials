//
//  BaseViewController.swift
//
//  Created by Tibor Leon Hahne on 01.06.18.
//  Copyright © 2018 Tibor Leon Hahne. All rights reserved.
//

import UIKit

class BaseViewController<T : BasePresenterProtocol> : UIViewController {
    
    lazy var presenter: T = T(view: self.view)
    var feedbackGenerator : UISelectionFeedbackGenerator?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
        
    func prepareFeedback() {
        if let _ = self.feedbackGenerator {
            self.feedbackGenerator?.prepare()
        }
        else {
            self.feedbackGenerator = UISelectionFeedbackGenerator()
            self.feedbackGenerator?.prepare()
        }
    }
    
    func releaseFeeback() {
        self.feedbackGenerator = nil
    }
    
    func giveFeedback() {
        if let _ = self.feedbackGenerator {
            self.feedbackGenerator?.selectionChanged()
            self.feedbackGenerator?.prepare()
        }
        else {
            self.prepareFeedback()
            self.feedbackGenerator?.selectionChanged()
        }
    }
    
}
