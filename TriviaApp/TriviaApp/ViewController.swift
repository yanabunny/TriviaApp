//
//  ViewController.swift
//  TriviaApp
//
//  Created by Teriyana Cohens on 3/11/19.
//  Copyright © 2019 Teriyana Cohens. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    //Outlet for buttons
    
    @IBOutlet weak var OptionA: UIButton!
    
    @IBOutlet weak var OptionB: UIButton!
    
    @IBOutlet weak var OptionC: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber : Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.textAlignment = .center
        OptionA.tag = 0
        OptionB.tag = 1
        OptionC.tag = 2
        updateQuestion()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        print("You chose button number", sender.tag)
        if sender.tag == selectedAnswer{
            print("correct")
            score+=1
        }
        else{
            print("wrong")
        }
        questionNumber+=1
        updateQuestion()
    }
    func updateQuestion(){
        
        
        if questionNumber <= allQuestions.list.count-1{
            questionLabel.text = allQuestions.list[questionNumber].question
            OptionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControlState.normal)
            OptionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControlState.normal)
            OptionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControlState.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            print("Correct Answer:", selectedAnswer)
            print("Question number you are on" , questionNumber)
            
        }
        else{
            let alert = UIAlertController(title: "Congrats!", message: "You made it to the end of the quiz, Wanna go again?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        
    }
        updateUI()
    }
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        
    }
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    

}

