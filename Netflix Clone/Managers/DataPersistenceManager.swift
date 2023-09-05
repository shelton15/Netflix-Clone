//
//  DataPersistenceManager.swift
//  Netflix Clone
//
//  Created by imac on 05/09/2023.
//

import Foundation
import UIKit


class DataPersistenceManager {
    
    static let shared = DataPersistenceManager()
    
    func downloadTitleWith(model: Title, completion: @escaping (Result<Void, Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            
            return
            
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
    }
    
}
