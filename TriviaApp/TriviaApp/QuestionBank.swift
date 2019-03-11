//
//  QuestionBank.swift
//  TriviaApp
//
//  Created by Teriyana Cohens on 3/11/19.
//  Copyright © 2019 Teriyana Cohens. All rights reserved.
//

import Foundation
class QuestionBank{
    var list = [Question]()
    init(){
         list.append(Question(questionText: "Who is the star of Harry Potter?", choiceA: "Harry", choiceB: "Ron", choiceC: "Hermoine", answer: 0))
         list.append(Question(questionText: "What is the school called in Harry Potter?", choiceA: "Smith Academy", choiceB: "Hogwarts", choiceC: "East High School", answer: 1))
         list.append(Question(questionText: "Who is the main villan in Harry Potter?", choiceA: "Umbridge", choiceB: "Snape", choiceC: "Voldemort", answer: 2))
    }
}
