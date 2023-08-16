//
//  orgProfile.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct orgProfile: View {
    @EnvironmentObject var : aboutOrg()
    
    var body: some View {
        
        NavigationStack {
            VStack{
                Text(mission)
            }
            .toolbar {
                ToolbarItemGroup(placement:.status) {
                    NavigationLink(destination:orgProfile()) {
                        Text("Profile")
                    }
                }
                ToolbarItemGroup(placement:.status) {
                    NavigationLink(destination: projectDashboard()) {
                        Text("Projects")
                    }
                }
                ToolbarItemGroup(placement:.status) {
                    NavigationLink(destination: makeProject()) {
                        Text("+")
                            .font(.system(size:40))
                            .fontWeight(.black)
                    }
                }
            }
        }
      }
    }


struct orgProfile_Previews: PreviewProvider {
    static var previews: some View {
        orgProfile()
    }
}
