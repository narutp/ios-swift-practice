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
        self.tabBar.barTintColor = UIColor.clear
        self.initializeTab()
    }
    
    func initializeTab() {
        let videoController = UINavigationController(rootViewController: VideoViewController())
        videoController.tabBarItem.image = UIImage(named: "video_black")
        videoController.tabBarItem.selectedImage = UIImage(named: "video_white")
        
        let favouriteController = UINavigationController(rootViewController: FavouriteViewController())
        favouriteController.tabBarItem.image = UIImage(named: "star_black")
        favouriteController.tabBarItem.selectedImage = UIImage(named: "star_white")
        
        self.viewControllers = [videoController, favouriteController]
    }
}

