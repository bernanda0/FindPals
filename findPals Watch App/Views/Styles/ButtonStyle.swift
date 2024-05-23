//
//  ButtonStyle.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct RoundedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundStyle(.tint)
            .background(
                RoundedRectangle(
                    cornerRadius: 20,
                    style: .continuous
                )
                .stroke(.tint, lineWidth: 1)
                .opacity(configuration.isPressed ? 0.5 : 1.0)
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            
    }
}

extension ButtonStyle where Self == RoundedButtonStyle {
    static var rounded: Self {
        return .init()
    }
}
