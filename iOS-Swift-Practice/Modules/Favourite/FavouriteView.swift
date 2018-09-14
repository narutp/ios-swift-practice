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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "Favourites"
        
        self.view.addSubview(videoDetailBtn)
        videoDetailBtn.setTitle("Detail", for: .normal)
        
        videoDetailBtn.autoCenterInSuperview()
        videoDetailBtn.autoPinEdge(toSuperviewEdge: .left)
        videoDetailBtn.autoPinEdge(toSuperviewEdge: .right)
        
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
