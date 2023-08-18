//
//  projectDashboard.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct projectDashboard: View {
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var body: some View {
        ZStack {
            Image("bkg2").resizable()
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
                .padding(.top, 50.0)
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
                }.padding(.top, 50.0).frame(height: 300.0)
                Spacer().frame(height: 80.0)
                ZStack {
                    //Rectangle()
                    HStack(alignment: .bottom, spacing:20) {
    //                    NavigationLink(destination: editOrganization())
    //                    {
    //                        VStack {
    //                            Image(systemName: "phone.fill")
    //                            Text("Profile")
    //
    //                        }.font(.headline).frame(width: (deviceWidth/2) - 50)
    //                            .padding(.all, 10.0)
    //                            .background(.mint)
    //                            .foregroundColor(.white)
    //                            .cornerRadius(10)
    //                    }
                        NavigationLink(destination: makeProject())
                        {
                            VStack {
                                Image(systemName: "phone.fill")
                                Text("New Project")
                                    
                            }.font(.headline).frame(width: (deviceWidth/2) - 50)
                                .padding(.all, 10.0)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                    }
                }
            }
        }.edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct projectDashboard_Previews: PreviewProvider {
    static var previews: some View {
        projectDashboard()
    }
}
