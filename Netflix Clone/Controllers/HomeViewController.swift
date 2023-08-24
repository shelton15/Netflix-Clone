//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by imac on 24/08/2023.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeFeedTabel: UITableView = {
        
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTabel)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTabel.frame = view.bounds
    }

}
