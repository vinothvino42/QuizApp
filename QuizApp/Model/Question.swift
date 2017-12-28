//
//  Question.swift
//  QuizApp
//
//  Created by Vinoth Vino on 28/12/17.
//  Copyright © 2017 Vinoth Vino. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAns: Bool) {
        questionText = text
        answer = correctAns
    }
}
