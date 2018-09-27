//
//  LoadingView.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 27/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit
import PureLayout

class LoadingView: UIView {
    
    let activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(activityIndicatorView)
        
        activityIndicatorView.startAnimating()
        
        activityIndicatorView.autoCenterInSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
