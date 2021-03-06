//
//  User.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 12/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class User {
    private var name: String?
    private var userProfile: UserProfile?
    
    init(_ name: String, _ userProfile: UserProfile) {
        self.name = name
        self.userProfile = userProfile
    }
    
    public func getName() -> String? {
        return self.name
    }
    
    public func setName(_ name: String) {
        self.name = name
    }
}
