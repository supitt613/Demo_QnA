//
//  QnaViewController.swift
//  Demo_QnA
//
//  Created by wentsung su on 2022/4/21.
//

import UIKit

class QnaViewController: UIViewController {
    
    
    @IBOutlet weak var questionImageView: UIImageView!
    
    

    @IBOutlet weak var answerImageView: UIImageView!
    
    
    
    var questions = [Question]()
    
    var index = 0
    
    var count:Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let question1 = Question(letter: "A", answer: "A00")
        questions.append(question1)
        let question2 = Question(letter: "B", answer: "B00")
        questions.append(question2)
        let question3 = Question(letter: "C", answer: "C00")
        questions.append(question3)
        
        let question27 = Question(letter: "1", answer: "100")
        questions.append(question27)
        // Do any additional setup after loading the view.
        questions.shuffle()
        questionImageView.image = UIImage(named: questions[index].letter)
        answerImageView.image = UIImage(named: questions[index].answer)
        
        
    }
    

    @IBAction func showAnswer(_ sender: UIButton) {
        
        answerImageView.image = UIImage(named:questions[index].answer)
        
    }
    
    
    @IBAction func nextQuestion(_ sender: UIButton) {
        
        index = index + 1
        count = count + 1
        if count == questions.count+1{
            
            index = 0
            count = 1
            questions.shuffle()
        }
        questionImageView.image = UIImage(named: questions[index].letter)
        answerImageView.image = UIImage(named: "nill")
        
        
            
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
