//
//  aboutOrganization.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct editOrganization: View {
    @ObservedObject var viewModel: OrganizationInfoViewModel
    

    var body: some View {
        
        VStack {
            Text("Edit Your Account").font(.system(size: 40))
            
            ZStack{
                Image("bkg")
                    .clipShape(Circle())
                    .frame(width:130, height:130)
                    .padding()
                NavigationLink(destination: ImagePicker(viewModel: OrganizationInfoViewModel()))
                {
                    Text("+")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)

                }
            }
            
            TextField("Mission", text: $viewModel.orgInfo.mission)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 300.0, height: 40.0)
                .border(Color.mint, width: 3)
                .padding()
            TextField("Motto", text: $viewModel.orgInfo.motto)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 300.0, height: 40.0)
                .border(Color.mint, width: 3)
                .padding()
                
            HStack
            {
                Text("Category").font(.system(size: 20))
                Picker(selection: .constant(1), label: Text("Pick a topic"))
                {
                    Text("Animals").tag(1)
                    Text("Children").tag(2)
                    Text("Education").tag(3)
                    Text("Environment").tag(4)
                    Text("Food Scarcity").tag(5)
                    Text("Woman's Health").tag(6)
                }
            }
            
            NavigationLink(destination: makeProject())
            {
                Text("Add Project +")
                    .font(.largeTitle)
                    .padding()
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            NavigationLink(destination: orgProfile(viewModel: OrganizationInfoViewModel(), orgInfo:viewModel.orgInfo))
            {
                Text("Finish")
                    .font(.largeTitle)
                    .padding()
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct editOrganization_Previews: PreviewProvider {
    static var previews: some View {
        editOrganization(viewModel: OrganizationInfoViewModel())
    }
}
