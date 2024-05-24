//
//  RadioButton.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 24/05/24.
//

import SwiftUI
struct RadioButton: View {
    @Binding private var isSelected: Bool
    private let label: String
    
    init(isSelected: Binding<Bool>, label: String = "") {
      self._isSelected = isSelected
      self.label = label
    }

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
           circleView
           labelView
        }
        .contentShape(Rectangle())
        .onTapGesture { isSelected = true }
    }
}

private extension RadioButton {
  @ViewBuilder var labelView: some View {
      if !label.isEmpty { // Show label if label is not empty
        Text(label)
      }
  }
  
  @ViewBuilder var circleView: some View {
     Circle()
       .fill(innerCircleColor) // Inner circle color
       .padding(4)
       .overlay(
          Circle()
            .stroke(outlineColor, lineWidth: 2)
        )
       .frame(width: 21, height: 21)
  }
}


private extension RadioButton {
   var innerCircleColor: Color {
      return isSelected ? Color.greenLight : Color.clear
   }

   var outlineColor: Color {
      return Color.white
   }
}

extension RadioButton {
   // To support multiple options
    init<V: Hashable>(tag: V, selection: Binding<V>, label: String = "") {
      self._isSelected = Binding(
        get: { selection.wrappedValue == tag },
        set: { _ in selection.wrappedValue = tag }
      )
      self.label = label
    }
}
