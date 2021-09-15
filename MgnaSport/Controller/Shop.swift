//
//  Shop.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/19/21.
//

import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    @Published var selectedCategory: Category? = nil
    @Published var selectedStar: StarModel = starsData[0]
    @Published var selectedSize: String = ""
    @Published var categoryPressed = categoryData[0].name
    @Published var text = ""
    @Published var show = false
    @Published var showRaiting = false
    
}
