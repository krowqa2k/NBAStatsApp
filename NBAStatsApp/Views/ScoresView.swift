//
//  ScoresView.swift
//  NBAStatsApp
//
//  Created by admin on 21/07/2024.
//

import SwiftUI


struct ScoresView: View {
    @ObservedObject var viewModel = ScoresViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Games")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image("nba-logo")
                    .resizable()
                    .frame(width: 40, height: 80)
            }
            .padding(.horizontal)
            DatePicker("Select Date:", selection: $viewModel.selectedDate, displayedComponents: .date)
                .padding(.horizontal)
                .datePickerStyle(DefaultDatePickerStyle())
            
            if viewModel.games.isEmpty {
                EmptyScoresView()
            } else {
                List(viewModel.games) { game in
                    BoxScoreView(game: game)
                }
                .listStyle(PlainListStyle())
                .listRowSeparator(.hidden)
            }
        }
        .navigationTitle("Games on \(formattedDate)")
    }
    
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: viewModel.selectedDate)
    }
}

struct EmptyScoresView: View {
    var body: some View {
        VStack {
            Text("No games available for the selected date.")
                .font(.headline)
                .padding()
            Image(systemName: "exclamationmark.triangle")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            Text("Please select a different date or check back later.")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}




#Preview {
    ScoresView()
}
