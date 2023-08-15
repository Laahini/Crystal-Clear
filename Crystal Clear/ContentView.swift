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
                Image("bkg")
                    .resizable()
                VStack {
                    Text("Hi there!")
                        .font(.system(size: 45))
                    Text("Who are you?").font(.system(size: 35))
                    
                    Button("Volunteers") {
                        
                    }.font(.system(size: 36))
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568))
                        .frame(width: 400.0, height: 60)
                    Spacer()
                        .frame(height: 30.0)
                    Button("Organizations")
                    {
                        
                    }.font(.system(size: 36))
                        .buttonStyle(.borderedProminent)
                        .tint(Color(hue: 0.609, saturation: 0.834, brightness: 0.568))
                        .frame(width: 400.0, height: 60)
                    
                    NavigationLink(destination: signIn())
                    {
                        Text("volunteers")
                            .font(.largeTitle)
                    }
                    NavigationLink(destination: signIn())
                    {
                        Text("orgs")
                            .font(.largeTitle)
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
