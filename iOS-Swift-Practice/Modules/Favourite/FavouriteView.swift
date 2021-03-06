//
//  FavouriteViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 11/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit
import LocalizationKit

class FavouriteView: UIViewController {

    var presenter: FavouritePresenterProtocol?
    private let videoDetailBtn = UIButton(type: .system)
    private let someText = UILabel()
    private var languageSheet = UIAlertController()
    private let loadingView = LoadingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let videoDetailTxt = Localization.get("Video.Detail", alternate: "default label text")
        view.backgroundColor = UIColor.white
        navigationItem.title = NSLocalizedString("Favourite title", comment: "")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Language", style: .plain, target: self, action: #selector(changeLanguage))

        self.view.addSubview(videoDetailBtn)
        self.view.addSubview(someText)
        self.view.addSubview(loadingView)
        
        loadingView.backgroundColor = .white
        loadingView.autoPinEdgesToSuperviewEdges()
        self.loadingView.isHidden = true
        
        
        // SETUP UI
        videoDetailBtn.setTitle("Detail", for: .normal)
        videoDetailBtn.autoSetDimension(.height, toSize: 50)
        videoDetailBtn.contentEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5)
        videoDetailBtn.backgroundColor = .blue
        videoDetailBtn.tintColor = .white
        
        someText.text = videoDetailTxt
        
        // LAYOUT
        videoDetailBtn.autoCenterInSuperview()
        
        someText.autoPinEdge(.top, to: .bottom, of: videoDetailBtn, withOffset: 20)
        someText.autoAlignAxis(toSuperviewAxis: .vertical)
        
        // LISTENER
        videoDetailBtn.addTarget(self, action: #selector(clickVideoDetailBtn), for: .touchUpInside)
    }
}

extension FavouriteView {
    @objc func clickVideoDetailBtn() {
        presenter?.goToVideoDetail()
    }
    
    @objc func changeLanguage() {
        languageSheet = UIAlertController(title: Localization.get("Change.language", alternate: "Change language"), message: "Something", preferredStyle: .actionSheet)
        let thaiAction = UIAlertAction(title: "Thai", style: .default) { (action) in
            self.loadingView.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                UserDefaults.standard.set(["th"], forKey: "AppleLanguages")
                UserDefaults.standard.synchronize()
                self.loadingView.isHidden = true
                exit(0)
            }
        }
        
        let engAction = UIAlertAction(title: "English", style: .default) { (action) in
//            Localization.setLanguage("en")
            
            self.loadingView.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                UserDefaults.standard.set(["en"], forKey: "AppleLanguages")
                UserDefaults.standard.synchronize()
                self.loadingView.isHidden = true
                exit(0)
            }
        }
        
        languageSheet.addAction(engAction)
        languageSheet.addAction(thaiAction)
        self.present(languageSheet, animated: true, completion: nil)
    }
}

extension FavouriteView: FavouriteViewProtocol {
    
}
