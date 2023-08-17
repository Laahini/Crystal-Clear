//
//  projectDashboard.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct projectDashboard: View {
    var body: some View {
        VStack {
            ZStack
            {
                Rectangle()
                VStack
                {
                    Text("Past Projects")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                }
            }
            .frame(height: 300.0)
            ZStack
            {
                Rectangle()
                VStack
                {
                    Text("Current Projects")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                }
            }
            .frame(height: 300.0)
            
            
        }
    }
}

struct projectDashboard_Previews: PreviewProvider {
    static var previews: some View {
        projectDashboard()
    }
}
