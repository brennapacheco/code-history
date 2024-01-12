//
//  ScoreView.swift
//  Code History
//
//  Created by Brenna Pacheco on 12/01/24.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                VStack {
                    Text("Final score:")
                        .font(.body)
                    Text("??? %")
                        .font(.system(size: 50))
                        .bold()
                        .padding()
                }
                Spacer()
                VStack {
                    Text("XXXX ✅")
                    Text("yyyy ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    BottomTextView(txt: "Re-take Quiz")
                })
            }
        }
        .foregroundStyle(.white)
        .navigationBarHidden(true)
    }
}

#Preview {
    ScoreView()
}
