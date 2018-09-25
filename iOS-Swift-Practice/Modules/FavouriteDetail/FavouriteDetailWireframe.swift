//
//  FavouriteDetailWireframe.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 26/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class FavouriteDetailWireframe: FavouriteDetailWireframeProtocol {
    static func createVideoDetailModule() -> UIViewController {
        let view = FavouriteDetailView()
        let presenter = FavouriteDetailPresenter()
        let interactor = FavouriteDetailInteractor()
        let wireframe = FavouriteDetailWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        
        return view
    }
}
