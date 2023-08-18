//
//  signInOrganization.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct signInOrganization: View {
    @ObservedObject var viewModel: OrganizationInfoViewModel
    
    var body: some View {
        VStack {
            Text("Organization Sign Up").font(.system(size: 35))
            
            TextField("Nonprofit Name", text: $viewModel.orgInfo.motto)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 300.0, height: 40.0)
                .border(Color.mint, width: 3)
                .padding()
            TextField("EIN Number", text: $viewModel.orgInfo.taxNumberEIN)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 300.0, height: 40.0)
                .border(Color.mint, width: 3)
                .padding()
            TextField("Email Address", text: $viewModel.orgInfo.emailAddressOrganization)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 300.0, height: 40.0)
                .border(Color.mint, width: 3)
                .padding()
            NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
            {
                Text("Submit Information")
                    .font(.largeTitle)
                    .padding()
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.padding()
            

        }
    }
}

struct signInOrganization_Previews: PreviewProvider {
    static var previews: some View {
        signInOrganization(viewModel: OrganizationInfoViewModel())
    }
}
