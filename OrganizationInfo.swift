//
//  OrganizationInfo.swift
//  Crystal Clear
//
//  Created by rishika on 8/17/23.
//

import Foundation
//8
struct OrganizationInfo {
    var mission: String = ""
    var motto: String = ""
    var profileImage: String =  ""
    var orgType: String = ""
    // other properties as needed
}

class OrganizationInfoViewModel: ObservableObject {
    @Published var orgInfo = OrganizationInfo()
}

