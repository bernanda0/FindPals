//
//  EmojiButton.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct CustomEmojiPicker: View {
    @Binding var selectedEmoji: String
    let animalEmojis = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵", "🐔", "🐧", "🐦", "🐤", "🐣", "🐥", "🦆", "🦅", "🦉", "🦇", "🐺", "🐗", "🐴", "🦄", "🐝", "🪲", "🐞", "🦋", "🐌", "🐛", "🦕", "🦖", "🐢", "🐍", "🦎", "🦂", "🦑", "🐙", "🦞", "🦀", "🐡", "🐠", "🐟", "🐬", "🐳", "🐋", "🦈", "🐊"]
    
    var body: some View {
        VStack {
            ForEach(0..<3) { index in
                let chunkSize = (animalEmojis.count + 2) / 3
                let chunkedEmojis = animalEmojis.chunked(into: chunkSize)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(chunkedEmojis[index], id: \.self) { emoji in
                            EmojiButton(emoji: emoji, isSelected: selectedEmoji == emoji) {
                                selectedEmoji = emoji
                            }
                        }
                    }
                    .padding(3)
                }
            }
        }
    }
}


struct EmojiButton: View {
    let emoji: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(emoji)
                .font(.title3)
                .padding()
                .background(isSelected ? Color.blue.opacity(0.2) : Color.clear)
                .clipShape(Circle())
        }
        .buttonStyle(PlainButtonStyle())
        
    }
}

struct Tes : View {
    @State var a = ""
    
    var body: some View {
        VStack {
            CustomEmojiPicker(selectedEmoji: $a)
        }
        
    }
}

#Preview {
    Tes()
}
