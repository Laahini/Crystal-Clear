//
//  landing.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/17/23.
//

import SwiftUI

struct landing: View {
    var body: some View {
        TabView
        {
            volunteerHome().tabItem() {
                Image(systemName: "house.fill")
                Text("Home")
            }
            learn().tabItem() {
                Image(systemName: "tray.fill")
                Text("Projects")
            }
        }
        .padding(.bottom, -45.0)
    }
}

struct landing_Previews: PreviewProvider {
    static var previews: some View {
        landing()
    }
}
