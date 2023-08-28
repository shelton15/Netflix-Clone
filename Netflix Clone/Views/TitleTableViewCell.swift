//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by imac on 28/08/2023.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    static let identifier = "TitleTableViewCell"
    
    private let titleLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let titlesPosterUIImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        
        return imageView
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "reuseIdentifier")
        contentView.addSubview(titlesPosterUIImageView)
    }
   
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
