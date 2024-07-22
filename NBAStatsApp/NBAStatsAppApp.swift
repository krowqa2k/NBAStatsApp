//
//  NBAStatsAppApp.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import SwiftUI

@main
struct NBAStatsAppApp: App {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
