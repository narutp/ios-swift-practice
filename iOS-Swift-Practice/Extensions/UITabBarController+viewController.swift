//
//  UITabBarController+createNav.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

extension UITabBarController {
    func createNavController(_ viewController: UIViewController, _ img: UIImage, _ selectedImg: UIImage) -> UINavigationController {
        let vc = viewController
        // create each tab controller
        let tabController = UINavigationController(rootViewController: vc)
        tabController.tabBarItem.image = img
        tabController.tabBarItem.selectedImage = selectedImg
        
        return tabController
    }
}
