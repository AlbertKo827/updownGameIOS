//
//  ViewController.swift
//  updownGame
//
//  Created by 고명석 on 2018. 5. 15..
//  Copyright © 2018년 고명석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickEnter(sender : UIButton){
        label.text = "0";
    }

}

