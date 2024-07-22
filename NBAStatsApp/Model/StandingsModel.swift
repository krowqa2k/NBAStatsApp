//
//  StandingsModel.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import Foundation

struct StandingsModel: Identifiable, Codable {
    let id = UUID().uuidString
    let season, seasonType, teamID: Int
    let key, city, name: String
    let conference: Conference
    let division: String
    let wins, losses: Int
    let percentage: Double
    let conferenceWINS, conferenceLosses, divisionWINS, divisionLosses: Int
    let homeWINS, homeLosses, awayWINS, awayLosses: Int
    let lastTenWINS, lastTenLosses: Int
    let pointsPerGameFor, pointsPerGameAgainst: Double
    let streak, gamesBack: Int
    let streakDescription: String
    let globalTeamID, conferenceRank, divisionRank: Int

    enum CodingKeys: String, CodingKey {
        case season = "Season"
        case seasonType = "SeasonType"
        case teamID = "TeamID"
        case key = "Key"
        case city = "City"
        case name = "Name"
        case conference = "Conference"
        case division = "Division"
        case wins = "Wins"
        case losses = "Losses"
        case percentage = "Percentage"
        case conferenceWINS = "ConferenceWins"
        case conferenceLosses = "ConferenceLosses"
        case divisionWINS = "DivisionWins"
        case divisionLosses = "DivisionLosses"
        case homeWINS = "HomeWins"
        case homeLosses = "HomeLosses"
        case awayWINS = "AwayWins"
        case awayLosses = "AwayLosses"
        case lastTenWINS =  "LastTenWins"
        case lastTenLosses = "LastTenLosses"
        case pointsPerGameFor = "PointsPerGameFor"
        case pointsPerGameAgainst = "PointsPerGameAgainst"
        case streak = "Streak"
        case gamesBack = "GamesBack"
        case streakDescription = "StreakDescription"
        case globalTeamID = "GlobalTeamID"
        case conferenceRank = "ConferenceRank"
        case divisionRank = "DivisionRank"
    }
}

enum Conference: String, Codable {
    case eastern = "Eastern"
    case western = "Western"
}
