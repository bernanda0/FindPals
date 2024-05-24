//
//  MatchFoundView.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 24/05/24.
//

import SwiftUI
import ConfettiSwiftUI
import UIKit

struct MatchFoundView: View {
    @State private var showAvatars = false
    @State private var counter: Int = 0
    @State private var match : [(String, String)] = [("🐶", "BC"), ("🐼", "BR")]
    
    var body: some View {
        ZStack {
            Color.base.ignoresSafeArea()
            
            VStack(spacing: 0) {
                Text("You found your match!")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                GeometryReader { geometry in
                    let width = geometry.size.width
                    
                    HStack(spacing: 0) {
                        AvatarWithInitial(userAvatar: match[0].0, initials: match[0].1, width: 80, height: 80, isBold: false)
                            .offset(x: showAvatars ? 0 : -width / 2)
                            .animation(.easeInOut(duration: 1.0), value: showAvatars)
                        
                        AvatarWithInitial(userAvatar: match[1].0, initials: match[1].1, width: 80, height: 80, isBold: true)
                            .offset(x: showAvatars ? 0 : width / 2)
                            .animation(.easeInOut(duration: 1.0), value: showAvatars)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 21)
                    .onAppear {
                        withAnimation {
                            showAvatars = true
                        }
                    }
                    .confettiCannon(counter: $counter, colors: [.greenDark, .greenLight, .purpleLight], confettiSize: 12, repetitions: 1)
                }
                
                Spacer()
            }
            
            
        }.onAppear {
            counter += 1
        }
    }
}

#Preview {
    MatchFoundView()
}
