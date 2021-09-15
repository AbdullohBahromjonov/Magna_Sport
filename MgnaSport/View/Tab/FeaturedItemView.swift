//
//  FeaturedItemView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 5/3/21.
//

import SwiftUI

struct FeaturedItemView: View {
    let add: SlideTab
    
    var body: some View {
        Image(add.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.size.width / 1.1)
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(add: playerData[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
