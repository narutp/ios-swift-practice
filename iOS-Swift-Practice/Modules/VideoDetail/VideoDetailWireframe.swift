//
//  VideoDetailWireframe.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class VideoDetailWireframe: VideoDetailWireframeProtocol {
    
    static func createVideoDetailModule() -> UIViewController {
        let view = VideoDetailView()
        let presenter = VideoDetailPresenter()
        let interactor = VideoDetailInteractor()
        let wireframe = VideoDetailWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        
        return view
    }
}
