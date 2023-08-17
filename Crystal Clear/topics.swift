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
        
        VStack{
            Text("What are you interested in helping?")
                .font(.system(size: 40))
            HStack{
                NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
                {
                    Text("Animals")
                        .font(.title)
                        .frame(width: deviceWidth/2)
                        .frame(height: deviceWidth/2)
                        .background(.pink)
                        .foregroundColor(.white)
                        .cornerRadius(2)
                }
                NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
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
                NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
                {
                    Text("Environment")
                        .font(.title)
                        .frame(width: deviceWidth/2)
                        .frame(height: deviceWidth/2)
                        .background(.mint)
                        .foregroundColor(.white)
                        .cornerRadius(2)
                    NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
                    {
                        Text("Food Scarcity")
                            .font(.title)
                            .frame(width: deviceWidth/2)
                            .frame(height: deviceWidth/2)
                            .background(.mint)
                            .foregroundColor(.white)
                            .cornerRadius(2)
                    }
                }
            }
            HStack{
                NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
                {
                    Text("Woman's Health")
                        .font(.title)
                        .frame(width: deviceWidth/2)
                        .frame(height: deviceWidth/2)
                        .background(.mint)
                        .foregroundColor(.white)
                        .cornerRadius(2)
                }
                NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
                {
                    Text("Children")
                        .font(.title)
                        .frame(width: deviceWidth/2)
                        .frame(height: deviceWidth/2)
                        .background(.mint)
                        .foregroundColor(.white)
                        .cornerRadius(2)
                }
                
                
            }
        }
    }
    
    struct topics_Previews: PreviewProvider {
        static var previews: some View {
            topics()
        }
    }
}
