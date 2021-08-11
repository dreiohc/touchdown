//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Myron Dulay on 6/8/21.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
