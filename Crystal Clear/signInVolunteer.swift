//
//  signInVolenteer.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/15/23.
//

import SwiftUI
extension Color {
    static let lightBlue = Color(red: 205 / 255, green: 237 / 255, blue: 246 / 255)
    static let blue = Color(red: 94 / 255, green: 176 / 255, blue: 191 / 255)
    static let darkBlue = Color(red: 4 / 255, green: 42 / 255, blue: 43 / 255)
    static let orange = Color(red: 239 / 255, green: 123 / 255, blue: 69 / 255)
    static let red = Color(red: 216 / 255, green: 71 / 255, blue: 39 / 255)
}
struct signInVolunteer: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    var body: some View {
        ZStack{
            Image("bkg2").resizable()
            VStack{
                Text("Volunteer Sign Up").padding().font(.system(size: 45))
                TextField("First Name", text: $firstName)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .frame(width: 300.0, height: 40.0)
                    .border(Color.mint, width: 3)
                    .padding()
                TextField("Last Name", text: $lastName)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .frame(width: 300.0, height: 40.0)
                    .border(Color.mint, width: 3)
                    .padding()
                TextField("Email Address", text: $emailAddress)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .frame(width: 300.0, height: 40.0)
                    .border(Color.mint, width: 3)
                    .padding()
                NavigationLink(destination: topics())
                {
                    Text("Submit")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.padding()
            }
        }.edgesIgnoringSafeArea([.top, .bottom])
        
    }
}

struct signIn_Previews: PreviewProvider {
    static var previews: some View {
        signInVolunteer()
    }
}
