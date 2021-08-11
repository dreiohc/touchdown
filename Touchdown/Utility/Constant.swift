//
//  Constant.swift
//  Touchdown
//
//  Created by Myron Dulay on 6/8/21.
//

import SwiftUI

// data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

// color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(.systemGray4)

// layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// ux



// api
// image
// font
// string
// misc
