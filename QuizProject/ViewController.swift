//
//  ViewController.swift
//  FinalProject
//
//  Created by stud on 10/05/2018.
//  Copyright © 2018 PWR. All rights reserved.
//

import UIKit

var takenCorrectArray = [0, 0, 0, 0, 0]
var retake = false

class ViewController: UIViewController {
    
    let t1a1 = "The 2014 World Cup was held in Brazil, marking the second time that Brazil hosted the competition. The cup was won by Germany, who beat Argentina 1–0 in the final. The Netherlands defeated Brazil 3–0 in the bronze medal game."
    let t1a2 = "2014 was the first time that three consecutive tournaments saw the winning side come from the same continent (Europe: 2006 Italy, 2010 Spain, 2014 Germany). The cup was won by Germany"
    
    let t2a1 = "The 2010 World Cup was held in South Africa. It was the first cup hosted on African soil, and the cup was won by Spain. The tournament was noted for its highly defensive opening matches, controversies surrounding goal-line technology, and the introduction of vuvuzelas. Though considered as one of the tournament favorites, the Spaniards won the cup despite scoring only eight goals in seven games and losing their opening match to Switzerland. "
    let t2a2 = "David Villa led the squad in scoring with five goals. In a final which saw a record number of yellow cards distributed and what some considered violent play from the Dutch side, the ten-man Netherlands squad were defeated 1–0 in the 116th minute of extra time by an Andrés Iniesta goal."
    
    let t3a1 = "The 2006 World Cup was held in Germany. It was the first World Cup for which the previous winner had to qualify; the host nation(s) continue to receive an automatic berth. Four African teams also made their debut in the world cup finals: Togo, Ivory Coast, Angola and Ghana who impressively made it to last 16 by beating the Czech Republic, third ranked in the world, 2–1, along with the United States 2–0, before losing to the defending champions Brazil 0–3."
    let t3a2 = "First seed and holders Brazil and second seeded England were initially English bookmakers' favourites. A strong performance by Germany brought them as far as the semi-finals. However, the final match-up was between Italy and France, in which French captain Zinedine Zidane was sent off in the last ten minutes of extra time for a headbutt to the chest of Italian central defender Marco Materazzi. Italy went on to win 5–3 in a penalty shootout, the score having been 1–1 after 90 minutes and extra time."
    
    let t4a1 = "The 2002 World Cup was the first to be held in Asia, and was hosted jointly by South Korea and Japan. Togolese Souleymane Mamam became the youngest player ever to take to a World Cup preliminary game field at 13 years, 310 days in Lomé in May 2001. "
    let t4a2 = "Australia defeated American Samoa 31–0 in a preliminary match – a new record for the margin of victory, and the highest-scoring match ever. The tournament was a successful one for teams traditionally regarded as minnows, with South Korea, Senegal and the United States all reaching the last eight. Brazil beat Germany 2–0 in the final for their fifth title."
    
    let t5a1 = "The 1998 World Cup was held in France, and had an expanded format featuring 32 teams. Iran beat the Maldives in qualification by the widest margin in World Cup history – 17–0. In the finals, the second round match between France and Paraguay witnessed the first golden goal in World Cup history, as Laurent Blanc scored to give the hosts a 1–0 victory. "
    let t5a2 = "Hosts France won the tournament by beating Brazil 3–0 in the final, as the scorer of four goals in the tournament, Ronaldo, appeared to be less than a hundred percent in the match, and was unable to make any impact. Debutants Croatia finished a commendable third."
    
    var mainTopics = ["The 2014 World Cup was held in Brazil, marking the second time that Brazil hosted the competition. The cup was won by Germany, who beat Argentina 1–0 in the final. The Netherlands defeated Brazil 3–0 in the bronze medal game.", "The 2010 World Cup was held in South Africa. It was the first cup hosted on African soil, and the cup was won by Spain. The tournament was noted for its highly defensive opening matches, controversies surrounding goal-line technology, and the introduction of vuvuzelas. Though considered as one of the tournament favorites, the Spaniards won the cup despite scoring only eight goals in seven games and losing their opening match to Switzerland. ", "The 2006 World Cup was held in Germany. It was the first World Cup for which the previous winner had to qualify; the host nation(s) continue to receive an automatic berth. Four African teams also made their debut in the world cup finals: Togo, Ivory Coast, Angola and Ghana who impressively made it to last 16 by beating the Czech Republic, third ranked in the world, 2–1, along with the United States 2–0, before losing to the defending champions Brazil 0–3.", "The 2002 World Cup was the first to be held in Asia, and was hosted jointly by South Korea and Japan. Togolese Souleymane Mamam became the youngest player ever to take to a World Cup preliminary game field at 13 years, 310 days in Lomé in May 2001. ", "The 1998 World Cup was held in France, and had an expanded format featuring 32 teams. Iran beat the Maldives in qualification by the widest margin in World Cup history – 17–0. In the finals, the second round match between France and Paraguay witnessed the first golden goal in World Cup history, as Laurent Blanc scored to give the hosts a 1–0 victory. "]
    
    var Images = ["2002", "1990", "1998", "1986", "1994"]
    
    var counter = 1
    

    @IBOutlet weak var Topic1: UITextView!
    @IBOutlet weak var Button_Next: UIButton!
    @IBOutlet weak var Button_Previous: UIButton!
    @IBOutlet weak var PageCounter: UILabel!
    @IBOutlet weak var Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Image.image = UIImage(named: Images[counter-1])
        // Do any additional setup after loading the view, typically from a nib.
        if retake{
            if takenCorrectArray[0]==0{
                mainTopics[0]=t1a2
            }
            if takenCorrectArray[1]==0{
                mainTopics[1]=t2a2
            }
            if takenCorrectArray[2]==0{
                mainTopics[2]=t3a2
            }
            if takenCorrectArray[3]==0{
                mainTopics[3]=t4a2
            }
            if takenCorrectArray[4]==0{
                mainTopics[4]=t5a2
            }
            
        }
        Topic1.text = mainTopics[0]
        Button_Previous.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextButton(_ sender: UIButton) {

        
            Button_Previous.isEnabled = true
        if counter == 5 {
            performSegue(withIdentifier: "StartTest", sender: self)
        }
        else{counter = counter + 1}
        
            PageCounter.text = String(counter)+"/5"
            Topic1.text = mainTopics[counter-1]
        Image.image = UIImage(named: Images[counter-1])
        
    }
    
    @IBAction func PreviousButton(_ sender: Any) {
        Button_Next.isEnabled = true
        counter = counter - 1
        PageCounter.text = String(counter)+"/5"
        if counter==1 {
            Button_Previous.isEnabled=false
        }
        Topic1.text = mainTopics[counter-1]
    }
    
}

