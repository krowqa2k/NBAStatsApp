//
//  BoxScoreView.swift
//  NBAStatsApp
//
//  Created by admin on 22/07/2024.
//

import SwiftUI

struct BoxScoreView: View {
    
    @StateObject var viewModel = ScoresViewModel()
    let game: ScoresModel
    
    var body: some View {
        VStack {
            Text("\(game.channel)")
                .foregroundStyle(.black)
                .foregroundStyle(.primary)
                .font(.footnote)
            HStack {
                VStack {
                    Image(game.awayTeam)
                        .resizable()
                        .frame(width: 80, height: 80)
                    Text(game.awayTeam)
                        .foregroundStyle(.black)
                    Text("\(game.awayTeamScore)")
                        .foregroundStyle(.black)
                        .font(.title)
                        .fontWeight(.bold)
                }
                Text("VS")
                    .foregroundStyle(.black)
                VStack {
                    Image(game.homeTeam)
                        .resizable()
                        .frame(width: 80, height: 80)
                    Text(game.homeTeam)
                        .foregroundStyle(.black)
                    Text("\(game.homeTeamScore)")
                        .foregroundStyle(.black)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            Text(game.status)
                .foregroundStyle(.black)
                .font(.caption)
        }
        .frame(width: 350, height: 200)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .primary, radius: 4, x: 0, y: 0)
    }
}

#Preview {
    BoxScoreView(game: ScoresModel(
        gameID: 20851,
        season: 2024,
        seasonType: 3,
        status: "Final",
        day: "2024-04-17T00:00:00",
        dateTime: "2024-04-17T21:30:00",
        updated: "2024-04-18T00:14:15",
        gameEndDateTime: "2024-04-18T00:05:53",
        dateTimeUTC: "2024-04-18T01:30:00",
        awayTeam: "ATL",
        homeTeam: "CHI",
        awayTeamID: 3,
        homeTeamID: 11,
        stadiumID: 11,
        channel: "ESPN",
        attendance: 21627,
        awayTeamScore: 131,
        homeTeamScore: 148,
        quarter: nil,
        timeRemainingMinutes: nil,
        timeRemainingSeconds: nil,
        pointSpread: -3.4,
        overUnder: 251.2,
        awayTeamMoneyLine: 145,
        homeTeamMoneyLine: -174,
        globalGameID: 20020851,
        globalAwayTeamID: 20000003,
        globalHomeTeamID: 20000011,
        pointSpreadAwayTeamMoneyLine: -122,
        pointSpreadHomeTeamMoneyLine: -129,
        lastPlay: "Scrambled",
        isClosed: true,
        homeRotationNumber: 621,
        awayRotationNumber: 620,
        neutralVenue: false,
        overPayout: -126,
        underPayout: -123,
        crewChiefID: 20000006,
        umpireID: 20000001,
        refereeID: 20000035,
        alternateID: 20000029,
        inseasonTournament: false,
        seriesInfo: SeriesInfo(
            homeTeamWins: 1,
            awayTeamWins: 0,
            gameNumber: 1,
            maxLength: 1
        ),
        quarters: [
            Quarter(
                quarterID: 168294,
                gameID: 20851,
                number: 1,
                awayScore: 1,
                homeScore: 25,
                name: "45"
            ),
            Quarter(
                quarterID: 168295,
                gameID: 20851,
                number: 2,
                awayScore: 2,
                homeScore: 51,
                name: "37"
            ),
            Quarter(
                quarterID: 168296,
                gameID: 20851,
                number: 3,
                awayScore: 3,
                homeScore: 28,
                name: "42"
            ),
            Quarter(
                quarterID: 168297,
                gameID: 20851,
                number: 4,
                awayScore: 4,
                homeScore: 27,
                name: "24"
            )
        ]
    ))
}

