//
//  WelcomeView.swift
//  Code History
//
//  Created by Brenna Pacheco on 11/01/24.
//

import SwiftUI

struct WelcomeView: View {
    
    var mainColor = Color(red: 69/255, green: 2/255, blue: 105/255)
    let accentColor = Color(red: 66/255, green: 245/255, blue: 75/255)
    
    var body: some View {
        NavigationStack {
            ZStack {
                mainColor.ignoresSafeArea()
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
                            .foregroundStyle(mainColor)
                            .background(accentColor)
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


