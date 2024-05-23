//
//  Interest.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import Foundation

final class Interest {
    let value : String
    var isSelected : Bool
    
    init(_ value: String) {
        self.value = value
        self.isSelected = false
    }
}

var interestsList: [Interest] = [
    Interest("🎵 Music"),
    Interest("🎨 Art"),
    Interest("🏃‍♂️ Running"),
    Interest("📚 Reading"),
    Interest("🍔 Foodie"),
    Interest("🎬 Movies"),
    Interest("🎮 Gaming"),
    Interest("✈️ Travel"),
    Interest("🐶 Doggos"),
    Interest("🏋️‍♂️ Gym"),
    Interest("⚽ Soccer"),
    Interest("🏀 Basketball"),
    Interest("🎾 Tennis"),
    Interest("🎤 Karaoke"),
    Interest("☕ Coffee"),
    Interest("🌿 Nature"),
    Interest("📸 Photography"),
    Interest("🎮 Video Games"),
    Interest("🖥️ Tech"),
    Interest("🏞️ Hiking"),
    Interest("⚽ Sports"),
    Interest("🎻 Playing Instruments"),
    Interest("💃 Dancing"),
    Interest("🎲 Board Games"),
]
