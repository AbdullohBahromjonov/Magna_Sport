//
//  CodableBundleExtention.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/11/21.
//

import Foundation

typealias GetData<T> = (String) -> T

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
            
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
            
        }
        
        let decoder = JSONDecoder()
        
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
            
        }
        
        return decodeData
    }
}


//Player.json decoded
let playerData: [SlideTab] = Bundle.main.decode("player.json")

//Category.json decoded
let categoryData: [Category] = Bundle.main.decode("category.json")

//Product.json decode
let productsData: [Product] = Bundle.main.decode("product.json")
