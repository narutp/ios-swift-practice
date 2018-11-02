//
//  VideoDetailsViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit
import ViewAnimator

class VideoDetailView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let tableView = UITableView()
    var tableData = ["Ant", "Bat", "Cat", "Dog", "Ant", "Bat", "Cat", "Dog", "Ant", "Bat", "Cat", "Dog", "Ant", "Bat", "Cat", "Dog",]
    var presenter: VideoDetailPresenterProtocol?
    
    private let sampleTableViewCellId = "sampleTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(tableView)
        self.view.backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: sampleTableViewCellId)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.separatorStyle = .none
        tableView.cellLayoutMarginsFollowReadableWidth = true
        
        tableView.autoPinEdge(toSuperviewEdge: .left)
        tableView.autoPinEdge(toSuperviewEdge: .right)
        tableView.autoPinEdge(toSuperviewMargin: .top)
        tableView.autoPinEdge(toSuperviewMargin: .bottom)
    }
    
    @objc func animate() {
        let fromAnimation = AnimationType.from(direction: .left, offset: 30.0)
        let zoomAnimation = AnimationType.zoom(scale: 0.6)
        
        UIView.animate(views: tableView.visibleCells, animations: [fromAnimation, zoomAnimation])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    // Put value into the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: sampleTableViewCellId, for: indexPath)
        cell.textLabel?.text = "This is cell \(tableData[indexPath.row])"
        
        return cell
    }
    
    
    
}

extension VideoDetailView: VideoDetailViewProtocol {
    func didLoadData() {
        
    }
    
    func beginUpdateUser() {
        
    }
}
