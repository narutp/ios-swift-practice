//
//  ViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit
import LocalizationKit

class MainTabBarController: UITabBarController {

    private let video = VideoWireframe.createVideoModule()
    private let favourite = FavouriteWireframe.createFavouriteModule()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button1 = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(changeLanguage))
        self.navigationItem.rightBarButtonItem  = button1
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(changeLanguage))
        self.tabBar.barTintColor = UIColor.clear
        self.initializeTab()
    }
    
    func initializeTab() {
        // createNavController extension
        let videoController = createNavController(video, #imageLiteral(resourceName: "video_black"), #imageLiteral(resourceName: "video_white"))
        let favouriteController = createNavController(favourite, #imageLiteral(resourceName: "star_black"), #imageLiteral(resourceName: "star_white"))
        
        self.viewControllers = [videoController, favouriteController]
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets.init(top: 4, left: 0, bottom: -4, right: 0)
        }
        
//        for item in tabBar.items {
//            item.imageInsets.....
//        }
        
    }
}

extension MainTabBarController {
    @objc func changeLanguage() {
        print("IN")
    }
}



