//
//  PathView.swift
//  EscapeTheRoom
//
//  Created by James Nagler on 8/4/20.
//

import SwiftUI
struct FlippedUpsideDown: ViewModifier {
   func body(content: Content) -> some View {
    content
        .rotationEffect(.radians(.pi))
      .scaleEffect(x: -1, y: 1, anchor: .center)
   }
}
extension View{
   func flippedUpsideDown() -> some View{
     self.modifier(FlippedUpsideDown())
   }
}
struct PathView: View {
    @State var lockedViews = ["4a","4b","3","5"]
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack{
                    
                    HStack{
                        if lockedViews.contains("5"){
                            
                            PathBox(imageName: "swiftLogo", challengeNum: "5", mentor: "JRamo", locked: true, completed: false)
                            
                        }else{
                            NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "5", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 5. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                                PathBox(imageName: "swiftLogo", challengeNum: "5", mentor: "JRamo", locked: true, completed: false)
                            }.accentColor(.clear)
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    Image(systemName: "arrow.merge")
                        .font(.largeTitle)
                        .scaleEffect(3.0)
                        .padding()
                    ScrollView(.horizontal){
                        HStack{
                            if lockedViews.contains("4a") || lockedViews.contains("4b"){
                                PathBox(imageName: "swiftLogo", challengeNum: "4a", mentor: "JRamo", locked: true, completed: false)
                                PathBox(imageName: "swiftLogo", challengeNum: "4b", mentor: "JRamo", locked: true, completed: false)
                            }else{
                                NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "4a", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 4a. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                                    PathBox(imageName: "swiftLogo", challengeNum: "4a", mentor: "JRamo", locked: true, completed: false)
                                }.accentColor(.clear)
                                .buttonStyle(PlainButtonStyle())
                                NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "4b", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 4b. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                                    PathBox(imageName: "swiftLogo", challengeNum: "4b", mentor: "JRamo", locked: true, completed: false)
                                }.accentColor(.clear)
                                .buttonStyle(PlainButtonStyle())
                            }
                        }.frame(idealWidth: 650, idealHeight: 300)
                    }
                    Image(systemName: "arrow.branch")
                        .font(.largeTitle)
                        
                        .scaleEffect(2.5)
                        .padding()
                    HStack{
                        if lockedViews.contains("3"){
                            
                            PathBox(imageName: "swiftLogo", challengeNum: "3", mentor: "JRamo", locked: true, completed: false)
                            
                        }else{
                        NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "3", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 3. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                            PathBox(imageName: "swiftLogo", challengeNum: "3", mentor: "JRamo", locked: true, completed: false)
                        }.accentColor(.clear)
                        .buttonStyle(PlainButtonStyle())
                        }
                        
                    }
                    Image(systemName: "arrow.up")
                        .font(.largeTitle)
                        
                        .scaleEffect(2.5)
                        .padding()
                    HStack{
                        if lockedViews.contains("2"){
                            
                            PathBox(imageName: "swiftLogo", challengeNum: "2", mentor: "JRamo", locked: false, completed: false)
                            
                        }else{
                            NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "2", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 2. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                            PathBox(imageName: "swiftLogo", challengeNum: "2", mentor: "JRamo", locked: false, completed: false)
                        }.accentColor(.clear)
                        .buttonStyle(PlainButtonStyle())
                        }
                        
                    }
                    Image(systemName: "arrow.merge")
                        .font(.largeTitle)
                        .scaleEffect(3.0)
                        .padding()
                    ScrollView(.horizontal){
                        HStack{
                            if lockedViews.contains("1a") || lockedViews.contains("1b"){
                                PathBox(imageName: "swiftLogo", challengeNum: "1a", mentor: "JRamo", locked: true, completed: false)
                                PathBox(imageName: "swiftLogo", challengeNum: "1b", mentor: "JRamo", locked: true, completed: false)
                            }else{
                                NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "1a", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 1a. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                                    PathBox(imageName: "swiftLogo", challengeNum: "1a", mentor: "JRamo", locked: false, completed: true)
                                }.accentColor(.clear)
                                .buttonStyle(PlainButtonStyle())
                                NavigationLink(destination: ChallengePage(imageName: "swiftLogo", challengeNum: "1b", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 1b. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")) {
                                    PathBox(imageName: "swiftLogo", challengeNum: "1b", mentor: "JRamo", locked: false, completed: true)
                                }.accentColor(.clear)
                                .buttonStyle(PlainButtonStyle())
                            }
                        }.frame(idealWidth: 650, idealHeight: 300)
                    }
                    
                }.flippedUpsideDown()
            }.flippedUpsideDown()
            
                    .navigationBarTitle("Challenge Path")
                    .navigationBarHidden(true)
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}
