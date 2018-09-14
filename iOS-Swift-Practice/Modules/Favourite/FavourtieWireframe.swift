//
//  FavourtieWireframe.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 14/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class FavouriteWireframe: FavouriteWireframeProtocol {
    static func createFavouriteModule() -> UIViewController {
        let view = FavouriteView()
        let presenter = FavouritePresenter()
        let interactor = FavouriteInteractor()
        let wireframe = FavouriteWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        
        return view
    }
    
    func pushVideoDetail(view: FavouriteViewProtocol) {
        let videoDetailView = VideoDetailWireframe.createVideoDetailModule()
        
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.pushViewController(videoDetailView, animated: true)
        }
    }
}
