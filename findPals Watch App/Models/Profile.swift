//
//  Profile.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import Foundation

final class Profile {
    var alias : String
    var animalSprit : String
    var gender : Gender
    
    init() {
        self.alias = ""
        self.animalSprit = ""
        self.gender = .none
    }
}

enum Gender {
    case none, male, female
}


