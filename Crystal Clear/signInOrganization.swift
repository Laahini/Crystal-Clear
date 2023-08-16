//
//  signInOrganization.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct signInOrganization: View {
    @State private var nonProfitName = ""
    @State private var taxNumberEIN = ""
    @State private var emailAddressOrganization = ""
    var body: some View {
        VStack{
            Text("Organization Sign Up")
                .padding()
            .font(.system(size: 40))
            HStack{
                    TextField("Nonprofit Name", text: $nonProfitName)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .frame(width: 150.0)
                        .border(Color.mint, width: 3)
                        .padding()
                    TextField("EIN Number", text: $taxNumberEIN)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .frame(width: 150.0)
                        .border(Color.mint, width: 3)
                        .padding()
            }
            TextField("Email Address", text: $emailAddressOrganization)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 300.0)
                .border(Color.mint, width: 3)
                .padding()
            
            NavigationLink(destination: aboutOrganization())
            {
                Text("Submit Information")
                    .font(.largeTitle)
                    .padding()
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

        }
    }
}

struct signInOrganization_Previews: PreviewProvider {
    static var previews: some View {
        signInOrganization()
    }
}
