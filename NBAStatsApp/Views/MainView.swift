//
//  MainView.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ScoresView()
                    .tabItem {
                        Image(systemName: "sportscourt.fill")
                        Text("Scores")
                    }
                    .padding(.bottom)
                
                StandingsView()
                    .tabItem {
                        Image(systemName: "list.number")
                        Text("Standings")
                    }
                    .padding(.bottom)
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Favorite team")
                    }
                    .padding(.bottom)
            }
            .accentColor(.blue)
        }
    }
}

#Preview {
    MainView()
}
