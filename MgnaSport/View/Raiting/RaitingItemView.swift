//
//  RaitingView.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/2/21.
//

import SwiftUI

struct RaitingItemView: View {
    let star: StarModel
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Image(systemName: star.image)
            .frame(width: 25, height: 25, alignment: .center)
            .foregroundColor(Color(star.color))
            .background(Color.gray.cornerRadius(5))
    }
}

struct RaitingView_Previews: PreviewProvider {
    static var previews: some View {
        RaitingItemView(star: starsData[0])
            .environmentObject(Shop())
    }
}
