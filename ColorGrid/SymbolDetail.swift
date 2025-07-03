//
//  SymbolDetail.swift
//  ColorGrid
//
//  Created by Łukasz Adamczak on 03/07/2025.
//

import SwiftUI

struct SymbolDetail: View {
    var symbol: Symbol
    
    var body: some View {
        Text(symbol.name)
            .font(.system(.largeTitle, design: .rounded))
        
        Image(systemName: symbol.name)
            .resizable()
            .scaledToFit()
            .symbolRenderingMode(.hierarchical)
            .foregroundColor(.accentColor)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        SymbolDetail(symbol: .init(name: "magnifyingglass"))
    }
}
