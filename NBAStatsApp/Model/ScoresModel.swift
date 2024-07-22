//
//  ScoresModel.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//
import Foundation

struct ScoresModel: Identifiable, Codable {
    let id = UUID().uuidString
    let gameID, season, seasonType: Int
    let status: String
    let day, dateTime, updated, gameEndDateTime, dateTimeUTC: String
    let awayTeam, homeTeam: String
    let awayTeamID, homeTeamID, stadiumID: Int
    let channel: String
    let attendance, awayTeamScore, homeTeamScore: Int
    let quarter: Int?
    let timeRemainingMinutes, timeRemainingSeconds: Int?
    let pointSpread, overUnder: Double
    let awayTeamMoneyLine, homeTeamMoneyLine, globalGameID, globalAwayTeamID, globalHomeTeamID: Int
    let pointSpreadAwayTeamMoneyLine, pointSpreadHomeTeamMoneyLine: Int
    let lastPlay: String
    let isClosed: Bool
    let homeRotationNumber, awayRotationNumber: Int
    let neutralVenue: Bool
    let overPayout, underPayout: Int
    let crewChiefID, umpireID, refereeID, alternateID: Int
    let inseasonTournament: Bool
    let seriesInfo: SeriesInfo
    let quarters: [Quarter]
    
    enum CodingKeys: String, CodingKey {
        case gameID = "GameID"
        case season = "Season"
        case seasonType = "SeasonType"
        case status = "Status"
        case day = "Day"
        case dateTime = "DateTime"
        case updated = "Updated"
        case gameEndDateTime = "GameEndDateTime"
        case dateTimeUTC = "DateTimeUTC"
        case awayTeam = "AwayTeam"
        case homeTeam = "HomeTeam"
        case awayTeamID = "AwayTeamID"
        case homeTeamID = "HomeTeamID"
        case stadiumID = "StadiumID"
        case channel = "Channel"
        case attendance = "Attendance"
        case awayTeamScore = "AwayTeamScore"
        case homeTeamScore = "HomeTeamScore"
        case quarter = "Quarter"
        case timeRemainingMinutes = "TimeRemainingMinutes"
        case timeRemainingSeconds = "TimeRemainingSeconds"
        case pointSpread = "PointSpread"
        case overUnder = "OverUnder"
        case awayTeamMoneyLine = "AwayTeamMoneyLine"
        case homeTeamMoneyLine = "HomeTeamMoneyLine"
        case globalGameID = "GlobalGameID"
        case globalAwayTeamID = "GlobalAwayTeamID"
        case globalHomeTeamID = "GlobalHomeTeamID"
        case pointSpreadAwayTeamMoneyLine = "PointSpreadAwayTeamMoneyLine"
        case pointSpreadHomeTeamMoneyLine = "PointSpreadHomeTeamMoneyLine"
        case lastPlay = "LastPlay"
        case isClosed = "IsClosed"
        case homeRotationNumber = "HomeRotationNumber"
        case awayRotationNumber = "AwayRotationNumber"
        case neutralVenue = "NeutralVenue"
        case overPayout = "OverPayout"
        case underPayout = "UnderPayout"
        case crewChiefID = "CrewChiefID"
        case umpireID = "UmpireID"
        case refereeID = "RefereeID"
        case alternateID = "AlternateID"
        case inseasonTournament = "InseasonTournament"
        case seriesInfo = "SeriesInfo"
        case quarters = "Quarters"
    }
}

struct SeriesInfo: Codable {
    let homeTeamWins, awayTeamWins, gameNumber, maxLength: Int
    
    enum CodingKeys: String, CodingKey {
        case homeTeamWins = "HomeTeamWins"
        case awayTeamWins = "AwayTeamWins"
        case gameNumber = "GameNumber"
        case maxLength = "MaxLength"
    }
}

struct Quarter: Identifiable, Codable {
    let id = UUID().uuidString
    let quarterID, gameID, number, awayScore, homeScore: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case quarterID = "QuarterID"
        case gameID = "GameID"
        case number = "Number"
        case awayScore = "AwayScore"
        case homeScore = "HomeScore"
        case name = "Name"
    }
}
