//
//  BloodCompatibility.swift
//  BloodType
//
//  Created by Diggo Silva on 23/05/25.
//

import Foundation

class BloodCompatibility {
    let selectedType: String
    let donate: String
    let receive: String
    
    init(selectedType: String, donate: String, receive: String) {
        self.selectedType = selectedType
        self.donate = donate
        self.receive = receive
    }
}
