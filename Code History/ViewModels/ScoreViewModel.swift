//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Brenna Pacheco on 12/01/24.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
        
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
