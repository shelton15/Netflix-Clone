//
//  SearchResultsViewController.swift
//  Netflix Clone
//
//  Created by imac on 28/08/2023.
//

import UIKit

class SearchResultsViewController: UIViewController {
    
    private let searchResultsCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 200)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: TitleCollectionViewCell.identifier)
        
        return collectionView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(searchResultsCollectionView)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
    }
    
}
