//
//  CircularLoading.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 24/05/24.
//

import SwiftUI

struct CircularLoading: View {
    @Binding var shouldAnimate : Bool
    
    var body: some View {
        Circle()
            .fill(Color.greenLight)
            .opacity(0)
            .frame(width: 30, height: 30)
            .overlay(
                ZStack {
                    Circle()
                        .stroke(Color.greenLight, lineWidth: 100)
                        .scaleEffect(shouldAnimate ? 1 : 0)
                    Circle()
                        .stroke(Color.greenLight, lineWidth: 100)
                        .scaleEffect(shouldAnimate ? 1.5 : 0)
                    Circle()
                        .stroke(Color.greenLight, lineWidth: 100)
                        .scaleEffect(shouldAnimate ? 2 : 0)
                }
                .opacity(shouldAnimate ? 0.0 : 0.2)
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: false))
        )
        .onAppear {
            self.shouldAnimate = true
        }
    }
}
