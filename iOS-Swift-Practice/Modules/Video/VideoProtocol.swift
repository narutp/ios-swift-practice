//
//  VideoProtocol.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

protocol VideoViewProtocol: class {
    var presenter: VideoPresenterProtocol? { get set }
    
    func didLoadData()
    func beginUpdateUser()
}

protocol VideoPresenterProtocol: class {
    var view: VideoViewProtocol? { get set }
    var interactor: VideoInteractorProtocol? { get set }
    var wireframe: VideoWireframeProtocol? { get set }
    
    func loadData()
}

protocol VideoInteractorProtocol: class {
    func fetchUser()
}

protocol VideoWireframeProtocol: class {
    static func createVideoModule() -> UIViewController
}
