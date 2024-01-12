//
//  GameViewModel.swift
//  Code History
//
//  Created by Brenna Pacheco on 11/01/24.
//

import SwiftUI


class GameViewModel: ObservableObject {

    //MARK: Published properties
    
    @Published private var game = Game()
    
    //MARK: Internal properties
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    //MARK: Internal methods
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextQuestion() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {

        if let guessedIndex = game.guesses[currentQuestion] {
            
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
            
        } else {
            return GameColor.main
        }
        
    }
}