//
//  BottomTextView.swift
//  Code History
//
//  Created by Brenna Pacheco on 11/01/24.
//

import SwiftUI

struct BottomTextView: View {
    let txt: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(txt)
                .font(.title)
                .bold()
                .padding()
            Spacer()
        }
        .foregroundStyle(GameColor.main)
        .background(GameColor.accent)
    }
}

#Preview {
    BottomTextView(txt: "Test")
}
