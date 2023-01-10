//
//  Question.swift
//  Country Flag Quiz
//
//  Created by Quinn Kozak on 1/10/23.
//

import Foundation
struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}
struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswer: [Answer]
}
