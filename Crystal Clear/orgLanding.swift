////
////  orgProfile.swift
////  Crystal Clear
////
////  Created by rishika on 8/16/23.
//
//
//import SwiftUI
//
//
//struct orgLanding: View {
//    @EnvironmentObject var orgInfo: aboutOrg
//
//    var body: some View {
//        TabView
//        {
//            orgProfile().tabItem() {
//                Image(systemName: "phone.fill")
//                Text("Profile")
//            }
//            makeProject().tabItem() {
//                Image(systemName: "phone.fill")
//                Text("New Project")
//            }
//            projectDashboard().tabItem() {
//                Image(systemName: "phone.fill")
//                Text("Projects")
//            }
//            learn().tabItem() {
//                Image(systemName: "phone.fill")
//                Text("Projects")
//            }
//        }
//        .padding(.bottom, -45.0)
//    }
//}
//
//
//struct orgLanding_Previews: PreviewProvider {
//    static var previews: some View {
//        orgLanding().environmentObject(aboutOrg())
//    }
//}
