//
//  HexagonalGrid.swift
//  findPals Watch App
//
//  Created by mac.bernanda on 23/05/24.
//

import SwiftUI

struct HexagonalGrid<Content: View>: View {
    let items: [String]
    let content: (String) -> Content
    
    private let rows: Int
    private let columns: Int
    private let spacing: CGFloat = 10.0
    
    init(items: [String], @ViewBuilder content: @escaping (String) -> Content) {
        self.items = items
        self.content = content
        self.rows = Int(ceil(sqrt(Double(items.count))))
        self.columns = self.rows
    }
    
    var body: some View {
        GeometryReader { geometry in
            let cellSize = (geometry.size.width - (CGFloat(columns - 1) * spacing)) / CGFloat(columns)
            
            ForEach(0..<items.count, id: \.self) { index in
                let row = index / columns
                let column = index % columns
                
                let xOffset = CGFloat(column) * (cellSize + spacing) + (row % 2 == 0 ? 0 : (cellSize + spacing) / 2)
                let yOffset = CGFloat(row) * (cellSize + spacing * 0.75)
                
                content(items[index])
                    .frame(width: cellSize, height: cellSize)
                    .position(x: xOffset + cellSize / 2, y: yOffset + cellSize / 2)
            }
        }
    }
}
