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
        list.append(Question(questionText: "1) What house at Hogwarts does Harry belong to?", choiceA: "Hufflepuff", choiceB: "Gryffindor", choiceC: "Slytherin", answer: 1))
        list.append(Question(questionText: "What position does Harry play on his Quidditch team?", choiceA: "Seeker", choiceB: "Chaser", choiceC: "Keeper", answer: 0))
        list.append(Question(questionText: "Who is Fluffy?", choiceA: "Hermione's Cat", choiceB: "Hagrid's Dragon", choiceC: "A Three-Headed Dragon", answer: 2))
        list.append(Question(questionText: "What does the Imperius Curse do?", choiceA: "Kills", choiceB: "Controls", choiceC: "Torture", answer: 1))
        list.append(Question(questionText: "Who kills Professor Dumbledore?", choiceA: "Draco Malfoy", choiceB: "Snape", choiceC: "Voldemort", answer: 1))
        list.append(Question(questionText: "How does Harry catch his first snitch?", choiceA: "In his mouth", choiceB: "In his hat", choiceC: "With his feet", answer: 0))
        list.append(Question(questionText: "What is Harry's Patronus?", choiceA: "An owl", choiceB: "A unicorn", choiceC: "A stag", answer: 2))
    }
}
