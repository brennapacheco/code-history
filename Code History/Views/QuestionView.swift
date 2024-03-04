//
//  QuestionView.swift
//  Code History
//
//  Created by Brenna Pacheco on 11/01/24.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            VStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                      Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                      }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                              .background(viewModel.color(forOptionIndex: answerIndex))
                      }
                      .disabled(viewModel.guessWasMade)
                    }
                  }
            Spacer()
                  if viewModel.guessWasMade {
                      Button(action: { viewModel.displayNextQuestion() }) {
                          BottomTextView(txt: "Next")
                      }
                  }
        }
        
    }
}

#Preview {
    QuestionView(question: Game().currentQuestion)
        .environmentObject(GameViewModel())
}
