//
//  ContentView.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("bkg").resizable()
                VStack
                {
                    Text("Hi there!").font(.system(size: 45))
                    Text("Who are you?").font(.system(size: 35))
                    
                    NavigationLink(destination: signInVolunteer())
                    {
                        Text(" A Volunteer       ")
                            .font(.largeTitle)
                            .padding()
                            .background(.mint)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
                    {
                        Text("An Organization")
                            .font(.largeTitle)
                            .padding()
                            .background(.mint)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }.edgesIgnoringSafeArea([.top, .bottom])
        }
        
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
