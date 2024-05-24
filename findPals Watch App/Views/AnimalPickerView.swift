//
//  AnimalPickerView.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct AnimalPickerView: View {
    @State var selectedAnimal = ""
    
    var body: some View {
        ZStack {
            Color.base.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Your animal spirit").font(.caption)
                        .bold()
                        .padding(.top, 20)
                        .padding(.leading, 16)
                    Spacer()
                }
                Spacer()
                    
                CustomEmojiPicker(selectedEmoji: $selectedAnimal)
                    .padding(.top, 4)
                
                HStack {
                    Spacer()
                    SmallButton(buttonText: "OK", action: {})
                        .padding(.trailing, 24)
                }.padding(.bottom, 46)
                
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    AnimalPickerView()
}
