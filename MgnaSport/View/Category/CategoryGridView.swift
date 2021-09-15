//
//  CategoryGridView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 5/10/21.
//

import SwiftUI

struct CategoryGridView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: 10, content: {
                Section(header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categoryData) { category in
                        CategoryItemView(category: category)
//                            .onTapGesture {
//                                withAnimation(.easeOut){
//                                    shop.selectedCategory = category
//                                }
//                            }
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, UIScreen.main.bounds.size.width / 30)
            .padding(.vertical, 10)
        })
    
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
            .environmentObject(Shop())
    }
}
