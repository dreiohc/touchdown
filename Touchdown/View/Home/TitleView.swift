//
//  TitleView.swift
//  Touchdown
//
//  Created by Myron Dulay on 8/8/21.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Preview
    
    var title: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
