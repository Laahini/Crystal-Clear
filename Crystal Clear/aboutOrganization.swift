//
//  aboutOrganization.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct aboutOrganization: View {
    @State private var mission = ""
    @State private var motto = ""
    var body: some View {
        VStack{
            Text("Welcome to Crystal!")
                .font(.system(size: 40))
            TextField("Mission", text: $mission)
                .multilineTextAlignment(.center)
                .font(.body)
//                .lineLimit(5, reservesSpace: true)
                .border(Color.mint, width: 3)
                .padding()
            TextField("Motto", text: $motto)
                .multilineTextAlignment(.center)
                .font(.body)
                .border(Color.mint, width: 3)
                .padding()
            HStack{
                Text("Category")
                    .font(.system(size: 20))
                Picker(selection: .constant(1), label: Text("Pick a topic")) {
                    Text("Animals").tag(1)
                    Text("Children").tag(2)
                    Text("Education").tag(3)
                    Text("Environment").tag(4)
                    Text("Food Scarcity").tag(5)
                    Text("Woman's Health").tag(6)
                }
            }
            NavigationLink(destination: orgProfile())
            {
                Text("Finish")
                    .font(.largeTitle)
                    .padding()
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            NavigationLink(destination: orgProfile())
            {
                Text("+")
                    .font(.largeTitle)
                    .padding()
            }
            
        }
    }
    
    
}

struct aboutOrganization_Previews: PreviewProvider {
    static var previews: some View {
        aboutOrganization()
    }
}
