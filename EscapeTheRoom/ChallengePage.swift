//
//  ChallengePage.swift
//  EscapeTheRoom
//
//  Created by James Nagler on 8/4/20.
//

import SwiftUI

struct ChallengePage: View {
    var imageName: String
    var challengeNum: String
    var mentor: String
    var title: String
    var bodyText: String
    var uniqueCode: String
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentationMode
    @State private var showingDeleteAlert = false
    @State private var showingAlert = false
    @State var code = ""
    var body: some View {
        ScrollView{
        VStack{
            Image(imageName).resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
                VStack(alignment: .leading){
                    Text("Challenge \(challengeNum)")
                        .font(.title2)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 10)
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    Text("Student Mentor: \(mentor)".uppercased())
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 10)
                    Text("\t\(bodyText)")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                        .frame(height: 200)
                        .padding()
                        .padding(.vertical)
                }.padding()
                Spacer()
            }
            HStack{
                VStack{
                    Text("Enter your challenge \(challengeNum) code: ")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 10)
                    TextField("Enter Code", text: $code)
                        .padding()
                        .padding(.horizontal,50)
                    Button(action: {
                        if code == uniqueCode{
                            self.deleteBook()
                        }else{
                            self.showingAlert.toggle()
                        }
                    }, label: {
                        Text("Check Code")
                            .fontWeight(.semibold)
                            .foregroundColor(.primary)
                            .font(.title)
                            .padding()
                            .padding(.horizontal)
                    }).background(LinearGradient(gradient: Gradient(colors: [Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                }
                
            }
            }
        }
        
        .ignoresSafeArea()
        .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Incorrect"), message: Text("Please enter the correct code"), dismissButton: .default(Text("Got it!")))
                }
    }
    func deleteBook() {
        
        // uncomment this line if you want to make the deletion permanent
        // try? self.moc.save()
        presentationMode.wrappedValue.dismiss()
    }
}

struct ChallengePage_Previews: PreviewProvider {
    static var previews: some View {
        ChallengePage(imageName: "swiftLogo", challengeNum: "3", mentor: "JRamo", title: "Cool Challenge", bodyText: "In Swift, create the cool challenge that has not been created yet. This is for Challenge 3. At the end of the challenge, enter in the uniqe code in the field below in order to continue.", uniqueCode: "testCode")
    }
}
