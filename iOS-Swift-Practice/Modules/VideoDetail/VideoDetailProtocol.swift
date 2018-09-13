//
//  VideoDetailProtocol.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

protocol VideoDetailWireframeProtocol: class {
    static func createVideoDetailModule() -> UIViewController
}

protocol VideoDetailViewProtocol: class {
    var presenter: VideoDetailPresenterProtocol? { get set }
    
    func didLoadData()
    func beginUpdateUser()
}

protocol VideoDetailPresenterProtocol: class {
    var view: VideoDetailViewProtocol? { get set }
    var interactor: VideoDetailInteractorProtocol? { get set }
    var wireframe: VideoDetailWireframeProtocol? { get set }
    
    func loadData()
    func updateUser(displayName: String, description: String)
}

protocol VideoDetailInteractorProtocol: class {
    func fetchCurrentVideo()
}
