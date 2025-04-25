//
//  prospect.swift
//  HotProspects
//
//  Created by Hadi Al zayer on 27/10/1446 AH.
//

import Foundation
import SwiftData

@Model
class Prospect{
    var name: String
    var emailAddress: String
    var isContacted: Bool
    
    init(name: String, emailAddress: String, isContacted: Bool) {
        self.name = name
        self.emailAddress = emailAddress
        self.isContacted = isContacted
    }
}
