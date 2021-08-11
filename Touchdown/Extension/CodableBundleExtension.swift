//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Myron Dulay on 6/8/21.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("failed to located file bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("failed to load file from bundle")
    }
    
    let decoder = JSONDecoder()
    
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
      fatalError("failed to decode file from bundle.")
    }
    return decodedData
  }
}
