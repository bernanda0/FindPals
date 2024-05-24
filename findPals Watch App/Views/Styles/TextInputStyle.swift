//
//  TextInputStyle.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct BottomBorderTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.bottom, 10)
            .overlay(
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(height: 2) // Height of the bottom border
                        .foregroundColor(.greenLight) // Color of the bottom border
                }
            )
    }
}


extension TextFieldStyle where Self == BottomBorderTextFieldStyle {
    static var stroke_under: Self {
        return .init()
    }
}

struct ExampleBottomBorderTextField : View {
    @StateObject var profileVM = ProfileViewModel() // Assuming ProfileViewModel is defined elsewhere
    
    var body: some View {
        HStack {
            TextField("Your alias", text: $profileVM.alias)
        }
        .textFieldStyle(.stroke_under)
    }
}

#Preview {
    ExampleBottomBorderTextField()
}
