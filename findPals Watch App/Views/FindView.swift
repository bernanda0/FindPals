//
//  FindView.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct FindView: View {
    var body: some View {
        ZStack {
            Color.base.ignoresSafeArea()
            
            VStack() {
                Image("Search")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .padding(.bottom)
                
                FindButton(borderColor: .greenLight, action: {})
                    .padding(12)
                
                Spacer()
                
                HStack {
                    Spacer()
                    SmallButton(symbolName : "person.fill", action: {})
                        .padding(.trailing, 24)
                }
            }
        }
    }
}



#Preview {
    FindView()
}
