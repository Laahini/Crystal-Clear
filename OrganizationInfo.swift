//
//  OrganizationInfo.swift
//  Crystal Clear
//
//  Created by rishika on 8/17/23.
//

import Foundation
import PhotosUI
//8
struct OrganizationInfo {
    var mission: String = ""
    var motto: String = ""
    var orgType: String = ""
    var nonName: String = ""
    var taxNumberEIN: String = ""
    var emailAddressOrganization: String = ""
    // other properties as needed
}

class OrganizationInfoViewModel: ObservableObject {
    @Published var orgInfo = OrganizationInfo()
}

