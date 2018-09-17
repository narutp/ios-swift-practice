//
//  FavouriteViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class FavouriteView: UIViewController {

    var presenter: FavouritePresenterProtocol?
    private let videoDetailBtn = UIButton(type: .system)
    private let someText = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "Favourites"
        
        self.view.addSubview(videoDetailBtn)
        self.view.addSubview(someText)
        
        // SETUP UI
        videoDetailBtn.setTitle("Detail", for: .normal)
        videoDetailBtn.autoSetDimension(.height, toSize: 50)
        videoDetailBtn.backgroundColor = .blue
        videoDetailBtn.tintColor = .white
        
        someText.text = "Some text....."
        
        // LAYOUT
//        videoDetailBtn.autoCenterInSuperview()
        videoDetailBtn.autoAlignAxis(toSuperviewAxis: .vertical)
        
        someText.autoPinEdge(.top, to: .bottom, of: videoDetailBtn, withOffset: 20)
        someText.autoAlignAxis(toSuperviewAxis: .vertical)
//        videoDetailBtn.autoMatch(.width, to: .height, of: videoDetailBtn)
        
//        videoDetailBtn.autoPinEdge(toSuperviewEdge: .left)
//        videoDetailBtn.autoPinEdge(toSuperviewEdge: .right)
        
        // LISTENER
        videoDetailBtn.addTarget(self, action: #selector(clickVideoDetailBtn), for: .touchUpInside)
    }
}

extension FavouriteView {
    @objc func clickVideoDetailBtn() {
        presenter?.goToVideoDetail()
    }
}

extension FavouriteView: FavouriteViewProtocol {
    
}
