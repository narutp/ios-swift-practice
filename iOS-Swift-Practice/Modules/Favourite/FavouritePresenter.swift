//
//  FavouritePresenter.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 14/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class FavouritePresenter: FavouritePresenterProtocol {
    var view: FavouriteViewProtocol?
    
    var interactor: FavouriteInteractorProtocol?
    
    var wireframe: FavouriteWireframeProtocol?
    
    func loadData() {
        
    }
    
    func goToFavouriteDetail() {
        wireframe?.pushVideoDetail(view: view!)
    }
}
