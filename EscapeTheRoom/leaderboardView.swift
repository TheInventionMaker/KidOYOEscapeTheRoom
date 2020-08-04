//
//  leaderboardView.swift
//  EscapeTheRoom
//
//  Created by James Nagler on 8/4/20.
//

import SwiftUI

struct leaderboardView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var width = 0
    let precentages = [0.25,0.45,0.50,0.56,0.63,0.67,0.69,0.75,0.82,0.93]
    var body: some View {
        GeometryReader { geometry in
            ScrollView{
                
                VStack(spacing: 0){
                    Text("Leaderboard")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    ForEach(0..<10){ n in
                        ZStack{
                            
                            VStack(spacing: 0){
                                HStack{
                                   Text("\(n + 1). ")
                                    .foregroundColor(.red)
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    Text("JRamo\(n + 1)")
                                        .font(.title2)
                                        .fontWeight(.light)
                                        
                                        
                                    Spacer()
                                    Text("\(100 - Int(precentages[n] * 100))% Complete")
                                }.padding([.top, .leading, .trailing])
                                ZStack{
                                   
                                    Rectangle()
                                        .frame(height: 5, alignment: .center)
                                        .frame(maxWidth: .infinity)
                                        .overlay(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(5)
                                        .padding(.horizontal)
                                    HStack{
                                      
                                        Spacer()
                                        Rectangle()
                                            
                                            .frame(width: geometry.size.width * CGFloat(precentages[n]), height: 20, alignment: .center)
                                            
                                            .foregroundColor(colorScheme == .dark ? .black : .white)
                                    }
                                }
                            }
                        }
                           
                        
                    }
                   
                   
                }
            }
        }
    }
}

struct leaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        leaderboardView()
    }
}
