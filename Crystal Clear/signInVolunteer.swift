//
//  signInVolenteer.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/15/23.
//

import SwiftUI

struct signInVolunteer: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    var body: some View {
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
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.padding()
        }
    }
}

struct signIn_Previews: PreviewProvider {
    static var previews: some View {
        signInVolunteer()
    }
}
