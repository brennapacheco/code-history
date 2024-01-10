//
//  Game.swift
//  Code History
//
//  Created by Brenna Pacheco on 10/01/24.
//

import Foundation

struct Game {
    
    //Private Properties
    
    private(set) var isOver = false
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]()
    private let questions = Question.allQuestions.shuffled()
    
    //Computed Properties
    
    var numberOfQuestions: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var guessCount: (correct: Int, incorrect: Int) {
    
        var count: (correct: Int, incorrect: Int) = (0, 0)
    
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }

        return count
    }
    
    //Internal methods
    
    mutating func makeGuessForCurrentQuestion(atIndex: Int) {
        guesses[currentQuestion] = atIndex
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
}
