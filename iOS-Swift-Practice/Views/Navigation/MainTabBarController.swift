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
        
        self.tabBar.barTintColor = UIColor.clear
        self.initializeTab()
    }
    
    func initializeTab() {
        // createNavController extension
        let videoController = createNavController(VideoViewController(), #imageLiteral(resourceName: "video_black"), #imageLiteral(resourceName: "video_white"))
        let favouriteController = createNavController(FavouriteViewController(), #imageLiteral(resourceName: "star_black"), #imageLiteral(resourceName: "star_white"))
        
        self.viewControllers = [videoController, favouriteController]
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0)
        }
        
//        for item in tabBar.items {
//            item.imageInsets.....
//        }
    }
}

