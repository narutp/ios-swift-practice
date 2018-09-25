//
//  FavouriteDetailProtocol.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 26/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

protocol FavouriteDetailWireframeProtocol: class {
    static func createVideoDetailModule() -> UIViewController
}

protocol FavouriteDetailViewProtocol: class {
    var presenter: FavouriteDetailPresenterProtocol? { get set }
    
    func didLoadData()
    func beginUpdateUser()
}

protocol FavouriteDetailPresenterProtocol: class {
    var view: FavouriteDetailViewProtocol? { get set }
    var interactor: FavouriteDetailInteractorProtocol? { get set }
    var wireframe: FavouriteDetailWireframeProtocol? { get set }
    
    func loadData()
}

protocol FavouriteDetailInteractorProtocol: class {
    func fetchFavouriteList()
}
