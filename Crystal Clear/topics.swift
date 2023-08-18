//
//  topics.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct topics: View {
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var body: some View {
        ZStack {
            Image("bkg2").resizable()
            VStack {
                Text("What topic are you interested in?")
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .padding(.top, 25.0)
                HStack{
                    NavigationLink(destination:landing())
                    {
                        Text("Animals")
                            .font(.title)
                            .frame(width: deviceWidth/2)
                            .frame(height: deviceWidth/2)
                            .background(.pink)
                            .foregroundColor(.white)
                            .cornerRadius(2)
                    }
                    NavigationLink(destination: landing())
                    {
                        Text("Education")
                            .font(.title)
                            .frame(width: deviceWidth/2)
                            .frame(height: deviceWidth/2)
                            .background(.mint)
                            .foregroundColor(.white)
                            .cornerRadius(2)
                    }
                }
                HStack{
                    NavigationLink(destination:landing())
                    {
                        Text("Environment")
                            .font(.title)
                            .frame(width: deviceWidth/2)
                            .frame(height: deviceWidth/2)
                            .background(.yellow)
                            .foregroundColor(.white)
                            .cornerRadius(2)
                        NavigationLink(destination: landing())
                        {
                            Text("Food Scarcity")
                                .font(.title)
                                .frame(width: deviceWidth/2)
                                .frame(height: deviceWidth/2)
                                .background(.orange)
                                .foregroundColor(.white)
                                .cornerRadius(2)
                        }
                    }
                }
                HStack{
                    NavigationLink(destination: landing())
                    {
                        Text("Woman's Health")
                            .font(.title)
                            .frame(width: deviceWidth/2)
                            .frame(height: deviceWidth/2)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(2)
                    }
                    NavigationLink(destination: landing())
                    {
                        Text("Children")
                            .font(.title)
                            .frame(width: deviceWidth/2)
                            .frame(height: deviceWidth/2)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(2)
                    }
                    
                    
                }
            }
        }.edgesIgnoringSafeArea([.top, .bottom])
    }
}
    
struct topics_Previews: PreviewProvider {
        static var previews: some View {
            topics()
        }
    }
