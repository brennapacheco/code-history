//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Brenna Pacheco on 10/01/24.
//

import SwiftUI

struct ChoiceTextView: View {
    var choiceText: String

    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .frame(minWidth: 200, maxWidth: 300)
            .border(GameColor.accent, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice text!")
}
