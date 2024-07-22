//
//  SettingsView.swift
//  NBAStatsApp
//
//  Created by admin on 22/07/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    let aboutMe = URL(string: "https://github.com/krowqa2k")!
    let sportsDataURL = URL(string: "https://sportsdata.io")!
    
    var body: some View {
            VStack {
                HStack {
                    Text("Settings")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Image("nba-logo")
                        .resizable()
                        .frame(width: 40, height: 80)
                }
                .padding(.horizontal)
                
                List {
                    Section("Info about me") {
                        HStack {
                            Image("me")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                            VStack (alignment: .leading,spacing: 10){
                                Text("App created by Mateusz Krówczyński.")
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.primary)
                                Text("👇 You can reach me here.")
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .foregroundStyle(Color.primary)
                                Link("Github profile.", destination: aboutMe)
                                    .foregroundStyle(.blue)
                            }
                        }
                    }
                    Section("SPORTSDATA.IO") {
                        VStack(alignment: .leading) {
                            Image("sportsdataio")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            Text("The crypto app data that is used in this app comes from API from Sportsdata.io!")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundStyle(Color.primary)
                                .padding(.vertical)
                        }
                        Link("Visit SportsData!", destination: sportsDataURL)
                            .foregroundStyle(.blue)
                    }
                }
                .listStyle(GroupedListStyle())
                .frame(width: UIScreen.main.bounds.width, height: 480)
                
                Toggle("Dark Mode:", isOn: $isDarkMode)
                    .padding(.horizontal)
                    .font(.headline)
                Spacer()
            }
    }
}

#Preview {
    SettingsView()
}
