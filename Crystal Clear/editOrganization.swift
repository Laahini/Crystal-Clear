//
//  aboutOrganization.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI
class aboutOrg: ObservableObject
{
    @Published var mission = ""
    @Published var motto = ""
}
struct editOrganization: View {
    
    @StateObject var orgInfo = aboutOrg()

    var body: some View {
        VStack {
            Text("Edit Your Account").font(.system(size: 40))
            TextField("Mission", text: $orgInfo.mission)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 300.0, height: 40.0)
                .border(Color.mint, width: 3)
                .padding()
            TextField("Motto", text: $orgInfo.motto)
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
            NavigationLink(destination: orgLanding())
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

struct aboutOrganization_Previews: PreviewProvider {
    static var previews: some View {
        editOrganization()
    }
}
