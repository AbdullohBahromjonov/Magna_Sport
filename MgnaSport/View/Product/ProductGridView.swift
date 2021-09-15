//
//  ProductGridView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/16/21.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shop: Shop
    
    let content = ContentView()
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, content: {
            
            ForEach(sort(arr: productsData, find: shop.selectedCategory?.name ?? sampleCategory.name)) { product in
                    ProductItemView(product: product)
                        .onTapGesture {
                            withAnimation(.easeOut){
                                shop.selectedProduct = product
                                shop.showingProduct = true
                            }
                        }
                }
           
        })
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .environmentObject(Shop())
    }
}
