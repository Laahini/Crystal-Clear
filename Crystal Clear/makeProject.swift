//
//  makeProject.swift
//  Crystal Clear
//
//  Created by rishika on 8/16/23.
//

import SwiftUI

struct makeProject: View {
    @State private var projectName = ""
    @State var items: [ProjectItem] = []
    @State private var showNewProject = false
    
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
    }
}

struct makeProject_Previews: PreviewProvider {
    static var previews: some View {
        makeProject()
    }
}
