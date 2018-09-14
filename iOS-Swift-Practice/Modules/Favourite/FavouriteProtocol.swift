//
//  FavouriteProtocol.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 14/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

protocol FavouriteViewProtocol: class {
    var presenter: FavouritePresenterProtocol? { get set }
}

protocol FavouritePresenterProtocol: class {
    var view: FavouriteViewProtocol? { get set }
    var interactor: FavouriteInteractorProtocol? { get set }
    var wireframe: FavouriteWireframeProtocol? { get set }
    
    func loadData()
    func goToVideoDetail()
}

protocol FavouriteInteractorProtocol: class {
    func fetchUser()
}

protocol FavouriteWireframeProtocol: class {
    static func createFavouriteModule() -> UIViewController
    func pushVideoDetail(view: FavouriteViewProtocol)
}
