//
//  InterestView.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct InterestView: View {
    @State private var isDone : Bool = true
    @State private var counter : Int = 0
    
    var body: some View {
        ZStack {
            Color.base.ignoresSafeArea()
            
            VStack() {
                HStack {
                    Text("Interests").font(.caption).bold().padding(.leading, 16)
                    Spacer()
                }
                Spacer()
                
                ScrollableInterestView(counter: $counter)
                    .padding(.bottom, 20)
                    .padding(.top, 4)
                
                Spacer()
                
                HStack {
                    Text("\(counter)/5").padding(.leading, 24)
                    Spacer()
                    SmallButton(symbolName : "checkmark.circle.fill", action: {})
                        .padding(.trailing, 24)
                        .overlay {
                            if (!isDone) { Color.base }
                        }
                }.padding(.bottom, 24)
            }
        }
    }
}

struct ScrollableInterestView: View {
    @Binding var counter : Int
    
    var body: some View {
        VStack {
            ForEach(0..<3) { index in
                let chunkSize = (interestsList.count + 2) / 3
                let chunkedInterests = interestsList.chunked(into: chunkSize)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(chunkedInterests[index], id: \.value) { interest in
                            SelectionButton(counter: $counter, interest: interest) {
                                print(counter)
                            }
                        }
                    }
                    .padding(3)
                }
            }
        }
    }
}

#Preview {
    InterestView()
}
