//
//  Question.swift
//  Code History
//
//  Created by Brenna Pacheco on 10/01/24.
//

import Foundation

struct Question: Hashable {
    var questionText: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
    static var allQuestions = [Question(questionText: "Who invented the World Wide Web?",
                                        possibleAnswers: [
                                            "Steve Jobs",
                                            "Linus Torvalds",
                                            "Bill Gates",
                                            "Tim Berners-Lee"
                                        ],
                                        correctAnswerIndex: 3),
                               Question(questionText: "What was the first object oriented programming language?",
                                        possibleAnswers: [
                                            "Simula",
                                            "Python",
                                            "Swift",
                                            "C"
                                        ],
                                        correctAnswerIndex: 0)]
}
