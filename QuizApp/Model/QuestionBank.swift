//
//  QuestionBank.swift
//  QuizApp
//
//  Created by Vinoth Vino on 28/12/17.
//  Copyright © 2017 Vinoth Vino. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()

    init() {
        
        // Creating a quiz item and appending it to the list
        //
        //
        let item = Question(text: "The ++ operator increments the operand by 1, whereas, the -- operator decrements it by 1", correctAns: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        //Another way of appending questions to list obj
        list.append(Question(text: "A slug\'s blood is green.", correctAns: true))
        
        list.append(Question(text: "A file opened for writing already exists its contents would be overwritten.", correctAns: true))
        
        list.append(Question(text: "A zero value is considered to be false and a non-zero value is considered to be true", correctAns: true))
        
        list.append(Question(text: "= is used for comparison, whereas, == is used for assignment of two quantities.", correctAns: false))
        
        list.append(Question(text: "The keywords cannot be used as variable names.", correctAns: true))
        
        list.append(Question(text: "continue keyword skip one iteration of loop?", correctAns: true))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAns: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAns: true))
        
        list.append(Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAns: true))
        
        list.append(Question(text: "The Great Wall Of China is visible from the moon.", correctAns: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAns: false))
        
        list.append(Question(text: "Switch statement can have any number of case instances.", correctAns: true))
        
    }
}
