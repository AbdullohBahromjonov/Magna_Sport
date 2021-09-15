//
//  ProductDataProvider.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/12/21.
//

import Foundation

protocol ProductDataProvider {
    associatedtype T
    func getProducts(productURL: String) -> T
}

