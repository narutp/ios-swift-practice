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
        
        view.addSubview(videoDetailTxt)
        view.addSubview(videoDetailBtn)
        
        // SETUP Text
        videoDetailTxt.text = "This is label"
        
        // SETUP Button
        videoDetailBtn.setTitle("Detail", for: .normal)
        
        // LAYOUT
//        videoDetailTxt.autoPinEdge(toSuperViewEdge: .top)
        
        videoDetailTxt.autoCenterInSuperview()
        videoDetailTxt.autoPinEdge(toSuperviewEdge: .left)
        videoDetailTxt.autoPinEdge(toSuperviewEdge: .right)
        videoDetailTxt.autoAlignAxis(toSuperviewAxis: .vertical)
        
        videoDetailBtn.autoPinEdge(.top, to: .bottom, of: videoDetailTxt, withOffset: 20)
        videoDetailBtn.autoAlignAxis(toSuperviewAxis: .vertical)
        videoDetailBtn.autoPinEdge(toSuperviewEdge: .bottom)
        videoDetailBtn.autoCenterInSuperview()
        
        // Listener
        videoDetailBtn.addTarget(self, action: #selector(clickVideoDetail), for: .touchUpInside)
    }
}

extension VideoView {
    @objc func clickVideoDetail() {
        print("in")
        presenter?.goToVideoDetail()
    }
}

extension VideoView: VideoViewProtocol {
    
    func didLoadData() {
        
    }
    
    func beginUpdateUser() {
        
    }
}
