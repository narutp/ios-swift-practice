//
//  VideoDetailsViewController.swift
//  iOS-Swift-Practice
//
//  Created by Narut Poovorakit on 13/9/2561 BE.
//  Copyright © 2561 Narut Poovorakit. All rights reserved.
//

import UIKit

class VideoDetailView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView = UITableView()
    var tableData = ["Ant", "Bat", "Cat", "Dog", "Ant", "Bat", "Cat", "Dog", "Ant", "Bat", "Cat", "Dog", "Ant", "Bat", "Cat", "Dog",]
    var presenter: VideoDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "my")
        self.view.addSubview(tableView)
    }
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    // Put value into the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my", for: indexPath)
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
