//
//  RatingsDetailView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/19/21.
//

import SwiftUI

struct RatingsView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3, content: {
            Text("Ratings")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            HStack(alignment: .center, spacing: 5, content: {
                ForEach(starsData) { star in
                    RaitingItemView(star: star)
                        .onTapGesture {
                            shop.selectedStar = star
                            
                            
                            
                            
                            if shop.selectedStar.id >= starsData[0].id {
                                starsData[0].color = "yellow1"
                                
                                starsData[1].color = "white-1"
                                starsData[2].color = "white-1"
                                starsData[3].color = "white-1"
                                starsData[4].color = "white-1"
                            }
                            
                            if shop.selectedStar.id >= starsData[1].id {
                                starsData[1].color = "yellow1"
                                
                                starsData[2].color = "white-1"
                                starsData[3].color = "white-1"
                                starsData[4].color = "white-1"
                            }
                            
                            if shop.selectedStar.id >= starsData[2].id {
                                starsData[2].color = "yellow1"
                                
                                starsData[3].color = "white-1"
                                starsData[4].color = "white-1"
                            }
                            
                            if shop.selectedStar.id >= starsData[3].id {
                                starsData[3].color = "yellow1"
                                
                                starsData[4].color = "white-1"
                            }
                            
                            if shop.selectedStar.id >= starsData[4].id {
                                starsData[4].color = "yellow1"
                            }
                            
                        }
                }
            })
            
        })
    }
}

struct RatingsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
