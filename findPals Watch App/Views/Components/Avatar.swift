//
//  Avatar.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 24/05/24.
//

import SwiftUI

struct Avatar: View {
    @State var userAvatar : String = ""
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let circleSize = size
            let emojiSize = size * 0.73
            
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color("PurpleDark"), Color("PurpleLight"), Color("PurpleLighter")]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: circleSize, height: circleSize)
                
                Text(userAvatar)
                    .font(.system(size: emojiSize))
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct AvatarWithInitial: View {
    var userAvatar: String
    var initials: String
    var width: CGFloat
    var height: CGFloat
    var isBold: Bool
    
    var body: some View {
        VStack {
            Avatar(userAvatar: userAvatar)
                .frame(width: width, height: height)
            
            Text(initials)
                .font(.footnote)
                .fontWeight(isBold ? .bold : .regular)
                .padding(.top, 8)
        }
    }
}

#Preview {
//    Avatar(userAvatar: "🐶")
//        .frame(width: 120, height: 120)
    
    AvatarWithInitial(userAvatar: "🐶", initials: "AV", width: 100, height: 100, isBold: true)
}
