//
//  ContentView.swift
//  EscapeTheRoom
//
//  Created by James Nagler on 8/4/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                PathView()
                    .tabItem {
                        Image(systemName: "arrow.swap")
                        Text("Full Path")
                            .font(.title)
                            .fontWeight(.bold)
                            
                }
                ChallengesView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Challenges")
                }
                leaderboardView()
                    .tabItem {
                        Image(systemName: "chart.bar.fill")
                        Text("Leaderboard")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
