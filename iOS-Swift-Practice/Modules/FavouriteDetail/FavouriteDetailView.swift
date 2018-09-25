//
//  FavouriteDetailView.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 26/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class FavouriteDetailView: UIViewController {

    var presenter: FavouriteDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension FavouriteDetailView: FavouriteDetailViewProtocol {
    
    func didLoadData() {
        
    }
    
    func beginUpdateUser() {
        
    }
    
    
}
