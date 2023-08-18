//
//  aboutOrganization.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//
import PhotosUI
import SwiftUI

struct editOrganization: View {
    @ObservedObject var viewModel: OrganizationInfoViewModel
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    let topics = ["Animals", "Children", "Education", "Environment", "Food Scarcity", "Woman's Health"]

    var body: some View {
        
        VStack {
            Text("Edit Your Account").font(.system(size: 40))
            
            ZStack{
                Image("bkg")
                    .clipShape(Circle())
                    .frame(width:130, height:130)
                    .padding()
            
                PhotosPicker("+", selection: $avatarItem, matching: .images)

                if let avatarImage {
                    avatarImage
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 300.0, height: 300.0)
                }
            }
            .onChange(of: avatarItem) { _ in
                Task {
                    if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                        if let uiImage = UIImage(data: data) {
                            avatarImage = Image(uiImage: uiImage)
                            return
                        }
                    }

                    print("Failed")
                }
            }
            
            VStack {                
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
                Picker(selection: $viewModel.orgInfo.orgType, label: Text("Pick a topic"))
                {
                    ForEach(topics, id: \.self){
                        Text($0)
                    }
                }.pickerStyle(.menu)
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
