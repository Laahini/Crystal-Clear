//
//  makeProject.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct makeProject: View {
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    @State private var projectName = ""
    @State var items: [ProjectItem] = []
    @State private var showNewProject = false
    
    var body: some View {
        ZStack {
            Image("bkg2").resizable()
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
                
                Button(action: {
                    self.showNewProject = true
                }) {
                    Text("+")
                }
                
                
                List {
                    ForEach(items) { item in
                            Text(item.title)
                        }
                    }
                
                if showNewProject {
                    NewProjectItemView(title: "", items: $items, showNewProject: $showNewProject)
                }
            }
            VStack {
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
                        NavigationLink(destination: projectDashboard())
                        {
                            VStack {
                                Image(systemName: "phone.fill")
                                Text("Projects")
                                    
                            }.font(.headline).frame(width: (deviceWidth/2) - 50)
                                .padding(.all, 10.0)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                    }
                }
            }
        }
    }
}

struct makeProject_Previews: PreviewProvider {
    static var previews: some View {
        makeProject()
    }
}
