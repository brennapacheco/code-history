//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Brenna Pacheco on 10/01/24.
//

import SwiftUI

struct ChoiceTextView: View {
    var choiceText: String
    let accentColor = Color(red: 66/255, green: 245/255, blue: 75/255)  

    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice text!")
}
