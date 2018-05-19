//
//  ViewController.swift
//  updownGame
//
//  Created by 고명석 on 2018. 5. 15..
//  Copyright © 2018년 고명석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var inputNum : Int8!
    var answerNum : Int8 = Int8(arc4random_uniform(100) + 1);
    
    @IBOutlet weak var ViewNum: UILabel!
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var InputBox : UITextField!
    @IBOutlet weak var answerView : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.ViewNum.text = "00"
        self.answerView.text = String(self.answerNum);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickEnter(sender : UIButton){
        self.inputNum = Int8(InputBox.text!)
        
        
        checkAnswer(InputNum : self.inputNum)
        
        print("\(self.answerNum)")
        print("\(self.inputNum!)")
    }
    
    func checkAnswer(InputNum : Int8!){
        if (InputNum <= 100) && (InputNum > 0) {
            self.ViewNum.text = String(InputNum)
            
            if InputNum == self.answerNum {
                self.Result.text = "정답입니다!"
                
                self.answerNum = Int8(arc4random_uniform(100) + 1);
                self.answerView.text = String(self.answerNum);
            }
            else if InputNum < self.answerNum {
                self.Result.text = "좀 더 위!"
            }
            else {
                self.Result.text = "좀 더 아래!"
            }
        }
    }

}

