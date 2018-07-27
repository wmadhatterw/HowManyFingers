//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Seth Walton on 7/27/18.
//  Copyright © 2018 Seth Walton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblAnswer: UILabel!
    @IBOutlet var txtGuess: UITextField!
    @IBOutlet var lblRightorWrong: UILabel!
    
    @IBAction func btnGuessPressed(_ sender: Any) {
        let diceroll = arc4random_uniform(6)
        lblAnswer.text = String(diceroll)
        if Int32(txtGuess.text!)! == diceroll{
            lblRightorWrong.text = "You are Correct!!";
            lblAnswer.textColor = UIColor.green;
            lblRightorWrong.textColor = UIColor.green;
        }else{
            lblRightorWrong.text = "You are Wrong!!"
            lblAnswer.textColor = UIColor.red;
            lblRightorWrong.textColor = UIColor.red;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

