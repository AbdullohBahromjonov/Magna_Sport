//
//  MgnaSportApp.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 7/22/21.
//

import SwiftUI

@main
struct MgnaSportApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
