//
//  Bundle.swift
//  Africa
//
//  Created by Андрей Лапин on 04.04.2021.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil  ) else {
      fatalError("DEBUG: Failed to locate \(file) in bundle")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("DEBUG: Failed to load \(file) from bundle")
    }
    
    guard let images = try? JSONDecoder().decode(T.self, from: data) else {
      fatalError("DEBUG: Failed to decode \(data) from bundle")
    }
    
    return images
  }
}
