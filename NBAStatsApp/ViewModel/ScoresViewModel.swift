//
//  ScoresViewModel.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import Foundation
import Combine

class ScoresViewModel: ObservableObject {
    
    @Published var games: [ScoresModel] = []
    @Published var selectedDate: Date = Date() {
        didSet {
            print("Selected Date Updated: \(selectedDate)")
            fetchGames(forDate: selectedDate)
        }
    }
    
    init() {
        // Fetch data for the current date initially
        fetchGames(forDate: selectedDate)
    }
    
    func fetchGames(forDate date: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateFormatter.string(from: date)
        
        guard let url = URL(string: "https://api.sportsdata.io/v3/nba/scores/json/GamesByDateFinal/\(dateString)?key=7256266c315840b49e185ece2039e2a8") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else {
                print("No data.")
                return
            }
            
            guard error == nil else {
                print("Error: \(String(describing: error))")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("Invalid response.")
                return
            }
            
            guard response.statusCode >= 200 && response.statusCode < 300 else {
                print("Status code should be 2xx, but is \(response.statusCode)")
                return
            }
            
            DispatchQueue.main.async { [weak self] in
                do {
                    let decodedGames = try JSONDecoder().decode([ScoresModel].self, from: data)
                    self?.games = decodedGames
                } catch {
                    print("Decoding error: \(error)")
                }
            }
        }.resume()
    }
}
