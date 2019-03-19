//
//  Question.swift
//  TriviaApp
//
//  Created by Teriyana Cohens on 3/11/19.
//  Copyright © 2019 Teriyana Cohens. All rights reserved.
//

import Foundation
class Question {
    
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let correctAnswer: Int
    init(questionText: String, choiceA:String, choiceB:String, choiceC:String, answer:Int){
        
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        correctAnswer = answer
        
    }
}
