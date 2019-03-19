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
        
    
        OptionA.layer.cornerRadius = 10
        OptionA.clipsToBounds = true
        
        OptionB.layer.cornerRadius = 10
        OptionB.clipsToBounds = true
        
        OptionC.layer.cornerRadius = 10
        OptionC.clipsToBounds = true
        
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
            //let rightAlert = UIAlertController(title: "Congrats!", message: "Correct!", preferredStyle: .alert)
            //present(rightAlert, animated: true, completion: nil)
            score+=1
        }
        else{
            //let wrongAlert = UIAlertController(title: "Sorry", message: "Wrong!", preferredStyle: .alert)
            //present(wrongAlert, animated: true, completion: nil)
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
            if score == 10 {
            let alert = UIAlertController(title: "Congrats!", message: "You Won!!!, Wanna go again?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            }
            else{
                let alert = UIAlertController(title: "Sorry", message: "You didn't win, Wanna go again?", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
                alert.addAction(restartAction)
                present(alert, animated: true, completion: nil)
                
            }
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

