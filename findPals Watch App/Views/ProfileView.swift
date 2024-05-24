//
//  ProfileView.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var profileVM = ProfileViewModel()
    
    var body: some View {
        ZStack {
            Color.base.ignoresSafeArea()
            
            VStack() {
                HStack {
                    Text("Your profile").font(.caption).bold().padding(.leading, 16)
                    Spacer()
                }
                
                CustomText(text: $profileVM.alias, endSymbol: "chevron.down")
                
                CustomText(text: $profileVM.animalSpiritText, endSymbol: "chevron.down")
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Gender")
                    
                    HStack {
                        RadioButton(tag: .male, selection: $profileVM.gender, label: "Male")
                            .padding(.trailing, 10)
                        RadioButton(tag: .female, selection: $profileVM.gender, label: "Female")
                    }
                
                }
                
                HStack {
                    Spacer()
                    SmallButton(symbolName: "chevron.right", action: {}).padding()
                }.padding()
                
                
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
