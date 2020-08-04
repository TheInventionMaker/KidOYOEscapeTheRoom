//
//  ChallengesView.swift
//  EscapeTheRoom
//
//  Created by James Nagler on 8/4/20.
//

import SwiftUI

struct ChallengesView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "4a", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 4a. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                        ChallengeBox(imageName: "swiftLogo", challengeNum: "4a", title: "Do a cool challenge", mentor: "JRamo")
                            
                    }.accentColor(.clear)
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "4b", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 4b. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                    ChallengeBox(imageName: "swiftLogo", challengeNum: "4b", title: "Do another challenge", mentor: "JRamo")
                    }.accentColor(.clear)
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("Current Challenges")
        }
    }
}

struct ChallengesView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengesView()
    }
}
