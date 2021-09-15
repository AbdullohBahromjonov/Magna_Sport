//
//  StarsModel.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/2/21.
//

import Foundation

struct StarModel: Identifiable {
    let id: Int
    let image: String
    var color: String
}

var starsData = [
    StarModel(id: 1, image: "star.fill", color: "white-1"),
    StarModel(id: 2, image: "star.fill", color: "white-1"),
    StarModel(id: 3, image: "star.fill", color: "white-1"),
    StarModel(id: 4, image: "star.fill", color: "white-1"),
    StarModel(id: 5, image: "star.fill", color: "white-1")
]

