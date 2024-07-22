//
//  StandingsView.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import SwiftUI

struct StandingsView: View {
    
    @State private var selectedConference: conferenceSelector = .easternConference
    
    enum conferenceSelector {
        case westernConference
        case easternConference
    }
    
    var body: some View {
        NavigationStack{
            HStack() {
                Text("Standings")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image("nba-logo")
                    .resizable()
                    .frame(width: 40, height: 80)
            }
            .padding(.horizontal)
            VStack {
                Picker("Conferences", selection: $selectedConference) {
                    Text("East")
                        .tag(conferenceSelector.easternConference)
                    Text("West")
                        .tag(conferenceSelector.westernConference)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            }
            
            ZStack {
                    if selectedConference == .easternConference {
                        EasternStandings()
                            .transition(.move(edge: .leading))
                    } else {
                        WesternStandings()
                            .transition(.move(edge: .trailing))
                    }
                }
                .animation(.easeInOut, value: selectedConference)
        }
    }
}

#Preview {
    StandingsView()
}
