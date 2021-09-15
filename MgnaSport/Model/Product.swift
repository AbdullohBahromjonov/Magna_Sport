//
//  GoodsModel.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/14/21.
//

import Foundation

struct Product: Identifiable, Codable {
    let id: Int
    let category: String
    let name: String
    let image: String
    let price: Int
    let description: String
    let backgroundColor: String
    let sizes: Array<String>
}

func sort(arr: Array<Product>, find: String) -> Array<Product> {
    return arr.filter{$0.category == find}
}
