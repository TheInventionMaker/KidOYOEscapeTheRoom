//
//  ChallengeBox.swift
//  EscapeTheRoom
//
//  Created by James Nagler on 8/4/20.
//

import SwiftUI

struct ChallengeBox: View {
    var imageName: String
    var challengeNum: String
    var title: String
    var mentor: String
    var body: some View {
        VStack{
            Image(imageName).resizable()
                .aspectRatio(contentMode: .fit)
                
            HStack{
                VStack(alignment: .leading){
                    Text("Challenge \(challengeNum)")
                            .font(.headline)
                        .foregroundColor(.secondary)
                    Text(title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("Student Mentor: \(mentor)".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
            }.padding()
            
        }
        .cornerRadius(10)
        
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1),lineWidth: 3))
        .padding()
    }
}

struct ChallengeBox_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeBox(imageName: "swiftLogo", challengeNum: "3", title: "Do a cool challenge", mentor: "JRamo")
    }
}
