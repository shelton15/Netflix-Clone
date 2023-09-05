//
//  DownloadsViewController.swift
//  Netflix Clone
//
//  Created by imac on 24/08/2023.
//

import UIKit

class DownloadsViewController: UIViewController {
    
    private var titles: [TitleItem] = [TitleItem]()
    
    private let downloadedTable: UITableView = {
        
        let table = UITableView()
        table.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return table
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        title = "Downloads"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        downloadedTable.delegate = self
        downloadedTable.dataSource = self
        
        fetchLocalStorageForDownload()
    }
    
    
    private func fetchLocalStorageForDownload() {
        
        DataPersistenceManager.shared.fetchingTitlesFromDataBase { [weak self] result in
            switch result {
            case .success(let titles):
                
                self?.titles = titles
                
                self?.downloadedTable.reloadData()
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        downloadedTable.frame = view.bounds
    }
    
}


extension DownloadsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableVIew: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableVIew.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
            return UITableViewCell()
        }
        
        let title = titles[indexPath.row]
        
        cell.configure(with: TitleViewModel(titleName: (title.original_title ?? title.original_name) ?? "Unknowm title name", posterURL: title.poster_path ?? ""))
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
