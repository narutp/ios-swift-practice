//
//  VideoWireframe.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class VideoWireframe: VideoWireframeProtocol {
    static func createVideoModule() -> UIViewController {
        let view = VideoView()
        let presenter = VideoPresenter()
        let interactor = VideoInteractor()
        let wireframe = VideoWireframe()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        
        return view
    }
    
    func pushVideoDetail(view: VideoViewProtocol) {
        let videoDetailView = VideoDetailWireframe.createVideoDetailModule()
        
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.pushViewController(videoDetailView, animated: true)
        }
    }
    
}
