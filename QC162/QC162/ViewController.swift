//
//  ViewController.swift
//  QC162
//
//  Created by KENG on 10/11/2561 BE.
//  Copyright © 2561 Klanarong Sangsilp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var quest: UILabel!
    @IBOutlet weak var color: UIImageView!
    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var scored : Int = 0
    var countCorrect : Int = 0
    var countWrong : Int = 0
    
    var questionNumber : Int = 0
    let colorArray = ["1", "2", "3", "4", "5"]
    
    var randomcolor : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
  
    @IBAction func answerpressed(_ sender: AnyObject) {
            if sender.tag == 1 {
                pickedAnswer = true
            }else if sender.tag == 2 {
                pickedAnswer = false
            }
            
            checkAnswer()
            questionNumber = questionNumber+1
            updateUI()
    }
    
    func checkAnswer(){
        let correctAnswer = allQuestion.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            print("YES")
            scored = scored + 1
            countCorrect = countCorrect + 1
            
            ProgressHUD.showSuccess("YES")
            
        }else{
            print("NO")
            countWrong = countWrong+1
            ProgressHUD.showError("NO")
        }
    }
        func updateUI(){
            score.text = String(scored)
            if questionNumber == 0 {
             color.image = UIImage(named:"1")
            }else if questionNumber == 1 {
                color.image = UIImage(named:"2")
            }else if questionNumber == 2 {
                color.image = UIImage(named:"3")
            }else if questionNumber == 3 {
                color.image = UIImage(named:"4")
            }else if questionNumber == 4 {
                color.image = UIImage(named:"5")
            }

            nextQuestion()
        }
        
        func nextQuestion(){
            if questionNumber  <= 4 {
                quest.text = allQuestion.list[questionNumber].qusetionText
            }else{
                
                
                let alert = UIAlertController(title: "End Game", message: "เล่นจบแล้ว  คุณได้ \(scored) คะแนน เล่นอีกรอบ", preferredStyle: .alert)

                let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {UIAlertAction in self.startOver()})

                alert.addAction(restartAction)

                present(alert, animated: true, completion: nil)
                
            }//end else
            
        }
        
            func startOver()  {
                questionNumber = 0
                scored = 0
                countCorrect = 0
                countWrong = 0
                
                updateUI()
            
    }



}
