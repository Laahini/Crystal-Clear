//
//  ContentView.swift
//  Crystal Clear
//
//  Created by Laahini Addagatla on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    var body: some View {
        NavigationStack {
            ZStack {
                Image("bkg2").resizable()
                VStack
                {
                    Image("crystal").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit).frame(width: deviceWidth)
                    Text("Hi there! 👋").font(.system(size: 45)).padding(.bottom, 10.0)
                    Text("Who are you?").font(.system(size: 35))
                    
                    NavigationLink(destination: signInVolunteer())
                    {
                        Text(" A Volunteer       ")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            
                    }
                    
                    NavigationLink(destination: editOrganization(viewModel: OrganizationInfoViewModel()))
                    {
                        Text("An Organization")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.blue)
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
