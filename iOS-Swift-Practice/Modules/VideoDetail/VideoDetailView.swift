//
//  VideoDetailsViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class VideoDetailView: UIViewController {
    
    var presenter: VideoDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
}

extension VideoDetailView: VideoDetailViewProtocol {
    func didLoadData() {
        
    }
    
    func beginUpdateUser() {
        
    }
}
