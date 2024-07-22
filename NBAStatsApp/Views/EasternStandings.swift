//
//  EasternStandings.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import SwiftUI

struct EasternStandings: View {
    
    @StateObject var vm = StandingsViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack(spacing: 50) {
                    Text("#")
                        .font(.caption)
                    Text("Team")
                        .font(.caption)
                    Spacer()
                    Text("W-L")
                        .font(.caption)
                }
                .padding(.horizontal, 36)
                
                List {
                    ForEach(Array(vm.easternConferenceTeams.sorted(by: {$0.percentage > $1.percentage }).enumerated()), id: \.element.id) { index, team in
                        StandingRow(team: team, position: index + 1)
                    }
                }
                .listStyle(PlainListStyle())
            }
        }
    }
}

#Preview {
    EasternStandings()
}
