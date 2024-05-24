//
//  ProfileViewModel.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import Foundation


final class ProfileViewModel: ObservableObject {
    private let characterLimit = 1
    
    @Published var alias = "Your alias"
    @Published var animalSpiritText = "Animal Spirit" {
        didSet {
            if animalSpiritText.count > characterLimit && oldValue.count <= characterLimit {
                animalSpiritText = oldValue
            }
        }
    }
    @Published var gender : Gender = .none
    
}
