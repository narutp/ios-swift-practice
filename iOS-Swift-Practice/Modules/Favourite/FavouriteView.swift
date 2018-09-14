//
//  FavouriteViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class FavouriteView: UIViewController {

    var presenter: FavouritePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "Favourites"
    }
}

extension FavouriteView: FavouriteViewProtocol {
    
}
