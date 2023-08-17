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
            Image("bkg").clipShape(Circle()).frame(width:130, height:130).padding()
            ZStack
            {
                Rectangle().fill(.red).padding().frame(height:200)
                VStack
                {
                    Text("\"Motto statemment\"").font(.title)
                    Text("Mission statemment goes here").font(.body).padding()
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
            NavigationLink(destination: editOrganization())
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
        orgProfile().environmentObject(aboutOrg())
    }
}
