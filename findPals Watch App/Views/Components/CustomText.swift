//
//  CustomText.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct CustomText: View {
    @Binding var text : String
    @State var endSymbol : String? = ""
    
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            if let endSymbol = endSymbol {
                Image(systemName: endSymbol)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .overlay(
            VStack {
                Spacer()
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.greenLight)
            }
        )
    }
}

