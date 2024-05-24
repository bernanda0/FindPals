//
//  InfoView.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 24/05/24.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            Color.base.ignoresSafeArea()
            
            VStack(spacing: 0) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                
                
                Text("The app works best if you and the other user are within a 60-meter range.")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                
                Spacer()
                
                HStack {
                    Spacer()
                    SmallButton(buttonText: "OK", action: {
                        presentationMode.wrappedValue.dismiss()
                    }).padding(.trailing, 24)
                }
                
            }
            .ignoresSafeArea()
            .padding()
        }
    }
}


#Preview {
    InfoView()
}
