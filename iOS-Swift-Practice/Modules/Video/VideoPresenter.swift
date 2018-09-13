//
//  VideoPresenter.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class VideoPresenter: VideoPresenterProtocol {
    
    var view: VideoViewProtocol?
    
    var interactor: VideoInteractorProtocol?
    
    var wireframe: VideoWireframeProtocol?
    
    func loadData() {
        
    }
    
    func goToVideoDetail() {
        wireframe?.pushVideoDetail(view: view!)
    }
}
