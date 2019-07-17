

import UIKit

var answerArray = [0, 0, 0, 0, 0]
var review = false

class QuestionViewController: UIViewController {
    
    let q1a1 = "What was the location of the world cup 2014?"
    let q1a2 = "Who won the worldcup?"
    let o1a1 = ["ADANA", "BRAZIL", "POLAND", "TURKEY"]
    let o1a2 = ["GALATASARAY", "BRAZIL", "GERMANY", "PORTUGAL"]
    
    let q2a1 = "Where was the location of the world cup 2010?"
    let q2a2 = "Who scored 5 goals?"
    let o2a1 = ["POLAND", "CROTIA", "S. AFRICA", "BRAZIL"]
    let o2a2 = ["SABRI SARIOGLU", "DAVID VILLA", "RONALDO", "RONALDINHO"]
    
    let q3a1 = "Where was the location of the world cup 2006?"
    let t3a2 = "Who did Zidane fight with?"
    let o3a1 = ["GERMANY", "TURKEY", "GREECE", "SPAIN"]
    let o3a2 = ["SABRI SARIOGLU", "HASAN ALI KALDIRIM", "HENRY", "MATERAZZI"]
    
    let q4a1 = "Where was the location of the World Cup 2002?"
    let t4a2 = "Who won the World Cup 2002?"
    let o4a1 = ["JAPAN-S. KOREA", "GERMANY", "SPAIN", "ENGLAND"]
    let o4a2 = ["TURKEY", "S. KOREA", "JAPAN", "BRAZIL"]
    
    let q5a1 = "What was the location of the world cup 1998?"
    let q5a2 = "Who won the World Cup 1998?"
    let o5a1 = ["FRANCE", "ITALY", "GERMANY", "TURKEY"]
    let o5a2 = ["ITALY", "GERMANY", "BRAZIL", "FRANCE"]
    
    var mainQuestions = ["What was the location of the world cup 2014?", "Where was the location of the world cup 2010?", "Where was the location of the world cup 2006", "Where was the location of the World Cup 2002?", "What was the location of the world cup 1998?"]
    var alternativeQuestions = ["Who won the worldcup?", "Who scored 5 goals", "Who did Zidane fight with?", "Who won the World Cup 2002?", "Who won the World Cup 1998?"]
    
    var Questions = ["What was the location of the world cup 2014?", "Where was the location of the world cup 2010?", "Where was the location of the world cup 2006", "Where was the location of the World Cup 2002?", "What was the location of the world cup 1998?"]
    
    var counter = 1
    
    @IBOutlet weak var QuestionField: UITextView!
    @IBOutlet weak var Option1Button: UIButton!
    @IBOutlet weak var Option2Button: UIButton!
    @IBOutlet weak var Option3Button: UIButton!
    @IBOutlet weak var Option4Button: UIButton!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var PreviousButton: UIButton!
    @IBOutlet weak var PageCounter: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if(retake){
           Questions = alternativeQuestions
        }
        QuestionField.text = Questions[0]
        Option1Button.titleLabel?.text = o1a1[0]
        Option2Button.titleLabel?.text = o1a1[1]
        Option3Button.titleLabel?.text = o1a1[2]
        Option4Button.titleLabel?.text = o1a1[3]
        PreviousButton.isEnabled = false
        
        if(review){
            counter=1
        if (answerArray[counter-1]==1){
            Option1Button.backgroundColor = UIColor.green
            Option2Button.backgroundColor = UIColor.red
            Option3Button.backgroundColor = UIColor.red
            Option4Button.backgroundColor = UIColor.red
        }
            Option1Button.isEnabled = false
            Option2Button.isEnabled = false
            Option3Button.isEnabled = false
            Option4Button.isEnabled = false
        }
        if(review==false){
            Option1Button.isEnabled = true
            Option2Button.isEnabled = true
            Option3Button.isEnabled = true
            Option4Button.isEnabled = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func NextAction(_ sender: UIButton) {
        if(review){
            
            if (answerArray[counter-1] != 0){
                if (answerArray[counter-1]==1){
                    Option1Button.backgroundColor = UIColor.green
                    Option2Button.backgroundColor = UIColor.red
                    Option3Button.backgroundColor = UIColor.red
                    Option4Button.backgroundColor = UIColor.red
                }
             
                if (answerArray[counter-1]==2){
                    Option1Button.backgroundColor = UIColor.red
                    Option2Button.backgroundColor = UIColor.green
                    Option3Button.backgroundColor = UIColor.red
                    Option4Button.backgroundColor = UIColor.red
                }
                if (answerArray[counter-1]==3){
                    Option1Button.backgroundColor = UIColor.red
                    Option2Button.backgroundColor = UIColor.red
                    Option3Button.backgroundColor = UIColor.green
                     Option4Button.backgroundColor = UIColor.red
                }
                if (answerArray[counter-1]==4){
                    Option1Button.backgroundColor = UIColor.red
                    Option2Button.backgroundColor = UIColor.red
                    Option3Button.backgroundColor = UIColor.red
                    Option4Button.backgroundColor = UIColor.green
                }
            }
            
        }
        else{
            Option1Button.backgroundColor = UIColor.red
            Option2Button.backgroundColor = UIColor.red
            Option3Button.backgroundColor = UIColor.red
            Option4Button.backgroundColor = UIColor.red
        }

        
        PreviousButton.isEnabled = true
        if counter == 5 {
            performSegue(withIdentifier: "FinishTest", sender: self)
        }
        else{counter = counter + 1}
        
        PageCounter.text = String(counter)+"/5"
        QuestionField.text = Questions[counter-1]
    }
    
    @IBAction func PrevAction(_ sender: UIButton) {
        counter = counter - 1
        PageCounter.text = String(counter)+"/5"
        if counter==1 {
            PreviousButton.isEnabled=false
        }
        QuestionField.text = Questions[counter-1]
    }
    
    
    
    @IBAction func Opt1Action(_ sender: UIButton) {
        answerArray[counter-1] = 1
        Option1Button.backgroundColor = UIColor.green
        Option2Button.backgroundColor = UIColor.red
        Option3Button.backgroundColor = UIColor.red
        Option4Button.backgroundColor = UIColor.red
    }
    
    @IBAction func Opt2Action(_ sender: UIButton) {
        answerArray[counter-1] = 2
        Option1Button.backgroundColor = UIColor.red
        Option2Button.backgroundColor = UIColor.green
        Option3Button.backgroundColor = UIColor.red
        Option4Button.backgroundColor = UIColor.red
    }
    
    @IBAction func Opt3Action(_ sender: UIButton) {
        answerArray[counter-1] = 3
        Option1Button.backgroundColor = UIColor.red
        Option2Button.backgroundColor = UIColor.red
        Option3Button.backgroundColor = UIColor.green
        Option4Button.backgroundColor = UIColor.red
    }
    
    @IBAction func Opt4Action(_ sender: UIButton) {
        answerArray[counter-1] = 4
        Option1Button.backgroundColor = UIColor.red
        Option2Button.backgroundColor = UIColor.red
        Option3Button.backgroundColor = UIColor.red
        Option4Button.backgroundColor = UIColor.green
    }


}
