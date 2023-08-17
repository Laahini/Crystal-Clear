//
//  makeProject.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct makeProject: View {
    @State private var projectName = ""
    
    var body: some View {
        VStack
        {
            Text("Let's Make A New Project").font(.title)
            TextField("Project Name", text: $projectName)
                .multilineTextAlignment(.center)
                .font(.body)
                .frame(width: 350.0, height: 40.0)
                .border(Color.mint, width: 3)
                .padding()
            DatePicker(selection: .constant(Date()), label: { Text("End Date") }).frame(width: 350.0, height: 40.0).padding()
            
            
            //ADD ITEMS BUTTON PLUS LIST GOES HERE
            
            NavigationLink(destination: editOrganization())
            {
                Text("Create Project")
                    .font(.largeTitle)
                    .padding()
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct makeProject_Previews: PreviewProvider {
    static var previews: some View {
        makeProject()
    }
}
