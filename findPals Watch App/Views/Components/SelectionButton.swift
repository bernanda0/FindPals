//
//  SelectionButton.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct SelectionButton: View {
    @State var isSelected: Bool = false
    @Binding var counter : Int
    
    var interest: Interest
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
            counter = isSelected ? counter + 1 : counter - 1
            interest.isSelected = isSelected
            action()
        }) {
            Text(interest.value)
                .padding(.horizontal, 10)
                .font(.caption2)
        }
        .buttonStyle(.rounded)
        .onAppear(perform: {
            isSelected = interest.isSelected
        })
        .tint(isSelected ? .purpleLighter : .gray)
    }
}

struct ExampleSelectionButton : View {
    @State var counter = 0
    let i = Interest("basketball")
    
    var body: some View {
        SelectionButton(counter: $counter, interest: i) {
            print(counter)
        }
    }
}

#Preview {
    ExampleSelectionButton()
}
