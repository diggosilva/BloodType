//
//  BloodTypeData.swift
//  BloodType
//
//  Created by Diggo Silva on 23/05/25.
//

import Foundation

class BloodTypeData {
    static let all: [BloodCompatibility] = [
        BloodCompatibility(selectedType: "O+", donate: "Doa para: O+, A+, B+, AB+", receive: "Recebe de: O+, O-"),
        BloodCompatibility(selectedType: "O-", donate: "Doa para: Todos os tipos\n(O+, O-, A+, A-, B+, B-, AB+, AB-)\n(Doador universal)", receive: "Recebe de: O- Apenas"),
        BloodCompatibility(selectedType: "A+", donate: "Doa para: A+, AB+", receive: "Recebe de: A+, A-, O+, O-"),
        BloodCompatibility(selectedType: "A-", donate: "Doa para: A+, A-, AB+, AB-", receive: "Recebe de: A-, O-"),
        BloodCompatibility(selectedType: "B+", donate: "Doa para: B+, AB+", receive: "Recebe de: B+, B-, O+, O-"),
        BloodCompatibility(selectedType: "B-", donate: "Doa para: B+, B-, AB+, AB-", receive: "Recebe de: B-, O-"),
        BloodCompatibility(selectedType: "AB+", donate: "Doa para: AB+ Apenas", receive: "Recebe de: Todos os tipos\n(O+, O-, A+, A-, B+, B-, AB+, AB-)\n(Receptor universal)"),
        BloodCompatibility(selectedType: "AB-", donate: "Doa para: AB+, AB-", receive: "Recebe de: AB-, A-, B-, O-"),
    ]
}
