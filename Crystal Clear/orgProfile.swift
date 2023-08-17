//
//  orgProfile.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/16/23.
//

import SwiftUI

struct orgProfile: View {
    @ObservedObject var viewModel: OrganizationInfoViewModel
    var orgInfo: OrganizationInfo
    var body: some View {
        
        VStack
        {
            Text("Name of Org").font(.largeTitle)
            Image("bkg").clipShape(Circle()).frame(width:130, height:130).padding()
            ZStack
            {
                Rectangle().fill(.red).padding().frame(height:200)
                VStack
                {
                    Text("\(orgInfo.motto)").font(.title)
                    Text("\(orgInfo.mission)").font(.body).padding()
                }
            }
            ZStack
            {
                Rectangle().fill(.blue).padding().frame(height:100)
                VStack
                {
                    Text("Org Type goes here").font(.title)
                }
            }
            NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
            {
                Text("Edit Profile")
                    .font(.largeTitle).frame(width:325)
                    .padding()
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        
    }
}

struct orgProfile_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = OrganizationInfoViewModel() // Create an instance of the ViewModel
        let orgInfo = OrganizationInfo(mission: "John", motto: "john@example.com") // Create an instance of UserData
        return orgProfile(viewModel: viewModel, orgInfo: orgInfo)
    }
}
