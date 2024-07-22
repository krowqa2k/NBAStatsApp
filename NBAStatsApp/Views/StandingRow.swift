//
//  StandingRow.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import SwiftUI

struct StandingRow: View {
    
    @StateObject var vm = StandingsViewModel()
    let team: StandingsModel
    let position: Int
    
    var body: some View {
        HStack {
            Text("\(position)")
                .font(.headline)
                .foregroundStyle(.black)
            Image(team.name)
                .resizable()
                .frame(width: 35, height: 35)
                
            Text("\(team.city) \(team.name)")
                .font(.headline)
                .foregroundStyle(.black)
            
            Spacer()
            
            Text("\(team.wins) - \(team.losses)")
                .font(.headline)
                .foregroundStyle(.black)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 45)
        .padding(.horizontal)
        .background(Color.standings)
        .cornerRadius(8)
    }
    
}

#Preview {
    StandingRow(team: StandingsModel(season: 2024, seasonType: 1, teamID: 9, key: "BOS", city: "Boston", name: "Celtics", conference: .eastern, division: "Atlantic", wins: 64, losses: 18, percentage: 0.78, conferenceWINS: 41, conferenceLosses: 11, divisionWINS: 15, divisionLosses: 2, homeWINS: 37, homeLosses: 4, awayWINS: 27, awayLosses: 14, lastTenWINS: 7, lastTenLosses: 3, pointsPerGameFor: 120.57, pointsPerGameAgainst: 109.23, streak: 2, gamesBack: 0, streakDescription: "W2", globalTeamID: 20000009, conferenceRank: 0, divisionRank: 0), position: 1)
}
