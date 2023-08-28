//
//  UpcomingViewController.swift
//  Netflix Clone
//
//  Created by imac on 24/08/2023.
//

import UIKit

class UpcomingViewController: UIViewController {
    
    private let upcomingTable: UITableView = {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        title = "Upcoming"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
    }
    

    

}
