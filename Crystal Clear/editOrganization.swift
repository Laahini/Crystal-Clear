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
        ZStack {
            Image("bkg2").resizable()
            VStack {
                Text("Edit Your Account").font(.system(size: 40))
                
                ZStack{
                    Image("bkg")
                        .clipShape(Circle())
                        .frame(width:120, height:120)
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
                    TextField("Nonprofit Name", text: $viewModel.orgInfo.nonName)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .frame(width: 300.0, height: 40.0)
                        .border(Color.mint, width: 3)
                        .padding(.vertical, 10.0)
                    TextField("EIN Number", text: $viewModel.orgInfo.taxNumberEIN)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .frame(width: 300.0, height: 40.0)
                        .border(Color.mint, width: 3)
                        .padding(.vertical, 10.0)
                    TextField("Email Address", text: $viewModel.orgInfo.emailAddressOrganization)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .frame(width: 300.0, height: 40.0)
                        .border(Color.mint, width: 3)
                        .padding(.vertical, 10.0)

                }
                
                TextField("Mission", text: $viewModel.orgInfo.mission)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .frame(width: 300.0, height: 40.0)
                    .border(Color.mint, width: 3)
                    .padding(.vertical, 10.0)
                TextField("Motto", text: $viewModel.orgInfo.motto)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .frame(width: 300.0, height: 40.0)
                    .border(Color.mint, width: 3)
                    .padding(.vertical, 10.0)
                    
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
                        .font(.title)
                        .padding(.all, 10.0)
                        .frame(width: 300.0)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: orgProfile(viewModel: OrganizationInfoViewModel(), orgInfo:viewModel.orgInfo))
                {
                    Text("Finish")
                        .font(.title)
                        .padding(.all, 10.0)
                        .frame(width: 300.0)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }.edgesIgnoringSafeArea([.top, .bottom])
        
    }
}

struct editOrganization_Previews: PreviewProvider {
    static var previews: some View {
        editOrganization(viewModel: OrganizationInfoViewModel())
    }
}
