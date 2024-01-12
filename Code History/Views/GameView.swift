//
//  ContentView.swift
//  Code History
//
//  Created by Brenna Pacheco on 02/01/24.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundStyle(.white)
        .navigationBarHidden(true) 
        .environmentObject(viewModel)
    }
}

#Preview {
    GameView()
}
