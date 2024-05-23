//
//  Button.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct FindButton: View {
    var borderColor: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image("TitleLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 72)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .padding(.vertical, 2)
        }
        .buttonStyle(.rounded)
        .tint(.greenLight)
    }
}


#Preview {
    FindButton(borderColor: .greenLight, action: {})
        .padding()
}
