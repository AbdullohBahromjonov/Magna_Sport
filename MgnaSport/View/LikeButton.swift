//
//  QuantityFavuoriteDetailView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/19/21.
//

import SwiftUI

struct LikeButton: View {
    @State var liked = false
    
    var body: some View {
        HStack(content: {
            Button(action: {
                liked.toggle()
                
            }, label: {
                Image(systemName: "heart.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.size.width / 10)
                    .foregroundColor(liked ? .pink : .gray)
            })
        })
    }
}

struct QuantityFavuoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
