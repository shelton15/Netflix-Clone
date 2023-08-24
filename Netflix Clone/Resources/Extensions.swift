//
//  Extensions.swift
//  Netflix Clone
//
//  Created by imac on 24/08/2023.
//

import Foundation


extension String {
    func capitalizerFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
