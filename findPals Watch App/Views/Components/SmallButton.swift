//
//  SmallButton.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct SmallButton: View {
    var symbolName: String?
    var buttonText: String?
    var action: () -> Void
    
    @State private var isTapped: Bool = false
    
    
    var body: some View {
        let content: AnyView
        
        if let symbolName = symbolName {
            content = AnyView( Image(systemName: symbolName) )
        } else if let buttonText = buttonText {
            content = AnyView( Text(buttonText) )
        } else {
            content = AnyView(EmptyView())
        }
        
        return content
            .font(.system(size: 18))
            .foregroundColor(.greenLight)
            .onTapGesture {
                action()
            }
    }
}

#Preview {
    SmallButton(buttonText: "OK", action: {})
}
