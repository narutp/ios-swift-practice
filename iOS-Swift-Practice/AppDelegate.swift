//
//  AppDelegate.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        self.showMainScreen()
        
//        let numberAsString: String = "123"
//        let convertNumber: Int? = Int(numberAsString)
//        print("number: \(convertNumber!)")
        
//        let number: Int?
//        number = 5
//        let user = User("A", UserProfile("AB", "BA"))
//        print("user: \(user)")
//        if let number: Int = Int(number) {
//            print("number: \(number!)")
//        }
        let firstName: String? = "Narut"
        let lastName: String? = "Poovorakit"
        var fullName: String? = ""
        
        if let firstName = firstName, let lastName = lastName {
            fullName = firstName + " " + lastName
            
            print("first name + last name \(fullName!)")
        }
        
        return true
    }

    func showMainScreen() {
        let tabBarController = MainTabBarController()
        window?.rootViewController = tabBarController
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

