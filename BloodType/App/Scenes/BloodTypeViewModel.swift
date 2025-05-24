//
//  BloodTypeViewModel.swift
//  BloodType
//
//  Created by Diggo Silva on 24/05/25.
//

import Foundation

class BloodTypeViewModel {
    
    private let data = BloodTypeData.all
    private var selectedType: BloodCompatibility?
    
    func selectedType(at index: Int) {
        guard index < data.count else { return }
        selectedType = data[index]
    }
    
    func donateText() -> String {
        guard let selectedType else { return "Doa para: " }
        return selectedType.donate
    }
    
    func receiveText() -> String {
        guard let selectedType else { return "Recebe de: " }
        return selectedType.receive
    }
    
    func clearResults() {
        selectedType = nil
    }
}
