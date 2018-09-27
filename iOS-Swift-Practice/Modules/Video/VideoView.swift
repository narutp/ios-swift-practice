//
//  VideoViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit
import PureLayout
import LocalizationKit

class VideoView: UIViewController {
    
    var presenter: VideoPresenterProtocol?
//    private let container = UIView()
    private let videoDetailBtn = UIButton(type: .system)
    private let videoDetailTxt = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationItem.title = NSLocalizedString("Video title", comment: "")
        
        self.view.addSubview(videoDetailTxt)
        self.view.addSubview(videoDetailBtn)
        
        // SETUP Text
        videoDetailTxt.text = "This is label"
        
        // SETUP Button
        videoDetailBtn.setTitle("Detail", for: .normal)
        videoDetailBtn.backgroundColor = .blue
        videoDetailBtn.tintColor = .white
        
        // LAYOUT
//        videoDetailTxt.autoPinEdge(toSuperViewEdge: .top)
//        container.autoCenterInSuperview()
//        container.autoPinEdge(toSuperviewEdge: .left)
//        container.autoPinEdge(toSuperviewEdge: .right)
        videoDetailTxt.autoCenterInSuperview()
        videoDetailTxt.autoPinEdge(toSuperviewEdge: .top)
        videoDetailTxt.autoPinEdge(toSuperviewEdge: .left)
        videoDetailTxt.autoPinEdge(toSuperviewEdge: .right)
        videoDetailTxt.autoMatch(.width, to: .height, of: videoDetailTxt)
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
