//
//  ContentView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 5/2/21.
//

import SwiftUI

let backgroundColor = Color(#colorLiteral(red: 1, green: 0.9566611071, blue: 0, alpha: 0.04690595198))
let sampleCategory: Category = categoryData[0]
let sampleProduct: Product = productsData[0]
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
}



struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    @State var text = ""
    
    var body: some View {
//        GeometryReader { geometry in
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack(spacing: 0) {
                        NavigationBar(text: $text)
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
                                
                                TitleView(title: shop.selectedCategory?.name ?? sampleCategory.name)
                                
                                //MARK: - Product gridview
                                LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                    
                                    ForEach(sort(arr: productsData, find: shop.selectedCategory?.name ?? sampleCategory.name).filter({"\($0)".contains(text) || text.isEmpty})) { product in
                                            ProductItemView(product: product)
                                                .onTapGesture {
                                                    withAnimation(.easeOut){
                                                        shop.selectedProduct = product
                                                        shop.showingProduct = true
                                                    }
                                                }
                                        }
                                   
                                })
                                .padding(15)
                                
                                Footer()
                                    .padding(.horizontal)
                            }
                        })
                    }
                    .background(backgroundColor.ignoresSafeArea(.all, edges: .all))
                } else {
                    DetailView()
                }
                
                
                
                
            }
            .ignoresSafeArea(.all, edges: .top)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
