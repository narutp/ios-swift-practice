//
//  ViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func initializeTab() {
        let videoController = UINavigationController(rootViewController: VideoViewController())
        videoController.tabBarItem.image = 
        
        let favouriteController = UINavigationController(rootViewController: FavouriteViewController())
    }
}

