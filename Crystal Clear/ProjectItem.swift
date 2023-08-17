//
//  addProject.swift
//  Crystal Clear
//
//  Created by rishika on 8/17/23.
//

import Foundation

class ProjectItem: Identifiable {
    var title = " "
    var id = UUID()
    
    
    init(title: String) {
        self.title = title
    }
}
