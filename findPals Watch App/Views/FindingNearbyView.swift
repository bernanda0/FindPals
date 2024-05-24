//
//  LoadingView.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 24/05/24.
//

import SwiftUI

struct FindingNearbyView: View {
    @State var isDone = false;
    
    var body: some View {
        ZStack {
            Color.base.ignoresSafeArea()
            
            CircularLoading(shouldAnimate: $isDone).padding(.bottom, 24)
            
            VStack {
                Spacer()
                Text("Finding nearby user ...")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 24)
                
            }
           
            
            
        }
    }
}

#Preview {
    FindingNearbyView()
}
