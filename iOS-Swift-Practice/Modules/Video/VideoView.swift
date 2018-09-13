//
//  VideoViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit
import PureLayout

class VideoView: UIViewController {
    
    var presenter: VideoPresenterProtocol?
    private let videoDetailBtn = UIButton(type: .infoDark)
    private let videoDetailTxt = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationItem.title = "Videos"
        
        view.addSubview(videoDetailBtn)
        view.addSubview(videoDetailTxt)
        
        // SETUP Text
        videoDetailTxt.text = "This is label"
        
        // SETUP Button
        videoDetailBtn.setTitle("Detail", for: .normal)
        
        // LAYOUT
        videoDetailBtn.autoPinEdge(toSuperviewEdge: .left)
        videoDetailBtn.autoPinEdge(toSuperviewEdge: .right)
        videoDetailBtn.autoCenterInSuperview()
    }
}

extension VideoView: VideoViewProtocol {
    
    func didLoadData() {
        
    }
    
    func beginUpdateUser() {
        
    }
}
