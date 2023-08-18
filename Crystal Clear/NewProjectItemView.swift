//
//  NewProjectItemView.swift
//  Crystal Clear
//
//  Created by rishika on 8/17/23.
//

import SwiftUI

struct NewProjectItemView: View {
    
    @State var title: String
    @Binding var items: [ProjectItem]
    @Binding var showNewProject : Bool
    
    var body: some View{
        
        VStack{
            Text("Project Item")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter supply name and amount", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
          
            Button(action: {
                self.addItem(title: self.title)
                self.showNewProject = false
            }) {
                Text("Add item to wishlist")
            }
            .padding()
        }
    }
    private func addItem(title: String) {
            
            let supply = ProjectItem(title: title)
            items.append(supply)
        }
}
struct NewProjectItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewProjectItemView(title: "", items: .constant([]), showNewProject: .constant(true))
    }
}
