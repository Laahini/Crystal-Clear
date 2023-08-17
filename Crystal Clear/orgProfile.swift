//
//  orgProfile.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/16/23.
//

import SwiftUI

struct orgProfile: View {
    var body: some View {
        
        VStack
        {
            Text("Name of Org").font(.largeTitle)
            Image("bkg").clipShape(Circle())
            ZStack
            {
                Rectangle().fill(.red).padding().frame(height:300)
                VStack
                {
                    Text("\"Motto statemment\"").font(.title)
                    Text("Mission statemment goes here").font(.title).padding()
                }
            }
            ZStack
            {
                Rectangle().fill(.red).padding().frame(height:100)
                VStack
                {
                    Text("Type goes here").font(.title)
                }
            }
            NavigationLink(destination: editOrganization())
            {
                Text("Edit Profile")
                    .font(.largeTitle)
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
        orgProfile().environmentObject(aboutOrg())
    }
}
