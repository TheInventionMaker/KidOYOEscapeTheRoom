//
//  PathBox.swift
//  EscapeTheRoom
//
//  Created by James Nagler on 8/4/20.
//

import SwiftUI

struct PathBox: View {
    var imageName: String
    var challengeNum: String
    var mentor: String
    var locked: Bool
    var completed: Bool
    var body: some View {
        VStack{
            ZStack{
           
                Image(imageName).resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(locked ? 0.5 : 1)
                    .opacity(completed ? 0.5 : 1)
               if completed{
                    Image("success").resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            HStack{
                VStack(alignment: .leading,spacing: 10){
                    if locked{
                    Text("Challenge \(challengeNum) is locked")
                            .font(.headline)
                        .foregroundColor(.primary)
                    Text("Student Mentor: \(mentor)".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    }else if !completed{
                        Text("Challenge \(challengeNum)")
                                .font(.headline)
                            .foregroundColor(.primary)
                        Text("Student Mentor: \(mentor)".uppercased())
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }else{
                        Text("Challenge \(challengeNum) is completed!")
                                .font(.headline)
                            .foregroundColor(.primary)
                        Text("Student Mentor: \(mentor)".uppercased())
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding([.horizontal, .bottom], 20)
            
        }
        .cornerRadius(10)
        
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1),lineWidth: 3))
        
        .padding()
    }
}

struct PathBox_Previews: PreviewProvider {
    static var previews: some View {
        PathBox(imageName: "swiftLogo", challengeNum: "3", mentor: "JRamo", locked: true, completed: false)
    }
}
