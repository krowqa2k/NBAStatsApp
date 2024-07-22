//
//  StandingsViewModel.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import Foundation

class StandingsViewModel: ObservableObject {
    
    @Published var standings: [StandingsModel] = []
    
    var easternConferenceTeams: [StandingsModel] {
            standings.filter { $0.conference == .eastern }
    }
        
    var westernConferenceTeams: [StandingsModel] {
            standings.filter { $0.conference == .western }
    }
    
    init(){
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://api.sportsdata.io/v3/nba/scores/json/Standings/2024?key=7256266c315840b49e185ece2039e2a8") else { return }
        
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
                    let decodedStandings = try JSONDecoder().decode([StandingsModel].self, from: data)
                    self?.standings = decodedStandings
                } catch {
                    print("Decoding error: \(error)")
                }
            }
        }.resume()
    }
}
