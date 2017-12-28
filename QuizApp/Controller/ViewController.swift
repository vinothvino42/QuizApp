//
//  ViewController.swift
//  QuizApp
//
//  Created by Vinoth Vino on 28/12/17.
//  Copyright © 2017 Vinoth Vino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let allQuestion = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nextAnswer()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextAnswer()
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score = score + 1
        } else {
            ProgressHUD.showError("Wrong ")
        }
    }
    
    func updateUI() {
        scoreLabel.text = "Score : \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    
    func nextAnswer() {
        if questionNumber <= 12 {
            questionLabel.text = allQuestion.list[questionNumber].questionText
            updateUI()
        } else {
            print("End of quizz")
            questionNumber = 0
            let alertController = UIAlertController(title: "Cool", message: "You've finished. Do you want to restart the quizz", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Restart", style: .default, handler: { (alertAction) in
                self.startOver()
            })
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextAnswer()
    }
}

