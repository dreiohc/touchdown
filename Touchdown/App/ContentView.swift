//
//  ContentView.swift
//  Touchdown
//
//  Created by Myron Dulay on 6/8/21.
//

import SwiftUI

struct ContentView: View {
  // MARK: - Properties
  
  // MARK: - Body
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        NavigationBarView()
          .padding(.horizontal, 15)
          .padding(.bottom)
          .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          .background(Color.white)
          .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
        
        ScrollView(.vertical, showsIndicators: false, content: {
          VStack(spacing: 0) {
            FeaturedTabView()
              .padding(.vertical, 20)
            
            CategoryGridView()
            
            TitleView(title: "Helmets")
            
            LazyVGrid(
                columns: gridLayout,
                spacing: 15,
                content: {
                ForEach(products) { product in
                    ProductItemView(product: product)
                } //: LOOP
            }) //: GRID
            .padding(15)
            
            TitleView(title: "Brands")
            
            BrandGridView()
            
            FooterView()
                .padding(.horizontal)
          } //: vstack
        }) //: scroll
      } //: vstack
      .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    } //: zstack
    .ignoresSafeArea(.all, edges: .top)
  }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
