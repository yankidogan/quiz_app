//
//  ResultsViewController.swift
//  FinalProject
//
//  Created by stud on 30/05/2018.
//  Copyright © 2018 PWR. All rights reserved.
//

import UIKit

var correctArray = [0, 0, 0, 0, 0]


class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var ResultText: UILabel!
    

    
    var scoreCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(answerArray[0]==2){
            scoreCounter=scoreCounter+1
            correctArray[0] = 1
        }
        if(answerArray[1]==3){
            scoreCounter=scoreCounter+1
            correctArray[1] = 1
        }
        if(answerArray[2]==1){
            scoreCounter=scoreCounter+1
            correctArray[2] = 1
        }
        if(answerArray[3]==1){
            scoreCounter=scoreCounter+1
            correctArray[3] = 1
        }
        if(answerArray[4]==1){
            scoreCounter=scoreCounter+1
            correctArray[4] = 1
        }
        ResultText.text = "Your Score: "+String(scoreCounter)+"/5"
        takenCorrectArray = correctArray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func ReviewAction(_ sender: UIButton) {
        review = true
    }
    
    @IBAction func RetakeAction(_ sender: UIButton) {
        retake = true
        review = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
