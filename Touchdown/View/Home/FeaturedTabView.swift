//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Myron Dulay on 6/8/21.
//

import SwiftUI

struct FeaturedTabView: View {
  
  // MARK: - Body
  
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    } //: tab
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

// MARK: - Preview

struct FeaturedTabView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedTabView()
      .previewDevice("iPhone 12 Pro")
      .background(Color.gray)
  }
}
