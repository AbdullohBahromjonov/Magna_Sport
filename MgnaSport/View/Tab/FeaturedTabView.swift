//
//  FeaturedTabView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 5/3/21.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(playerData, id: \.self) { adds in
                FeaturedItemView(add: adds)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
