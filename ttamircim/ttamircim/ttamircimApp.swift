//
//  ttamircimApp.swift
//  ttamircim
//
//  Created by Hüseyin HÖBEK on 18.07.2024.
//

import SwiftUI

@main
struct ttamircimApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(dataService: RealDataService())
        }
    }
}
