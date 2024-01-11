//
//  WelcomeView.swift
//  Code History
//
//  Created by Brenna Pacheco on 11/01/24.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                        .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            HStack {
                                Spacer()
                                Text("Okay, let's go!")
                                    .font(.title)
                                    .bold()
                                    .padding()
                                Spacer()
                            }
                            .foregroundStyle(GameColor.main)
                            .background(GameColor.accent)
                    })
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}


