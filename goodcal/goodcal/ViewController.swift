//
//  ViewController.swift
//  goodcal
//
//  Created by Sureena Wadhwa on 30/01/17.
//  Copyright © 2017 Sureena Wadhwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // var answer : Int32 = 0
    var LastNumber : String! = ""
    @IBOutlet  var answerField: UILabel!
    @IBOutlet var operationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonTapped(theButton: UIButton) {
        //  @IBOutlet  var answerField: UILabel!
        
        
        
        if let text = theButton.titleLabel?.text {
            
            
                        if answerField.text == "0" {
                answerField.text = theButton.titleLabel!.text;
            }
                            
            else {
                let a = answerField.text
                answerField.text = a! + (theButton.titleLabel?.text!)!
                
                //   answerField.text += (theButton.titleLabel!.text);
                
            }
            
            print(text)
            
        } else {
            // text doesn't have value
        }
    }
    @IBAction func plusTapped(theButton: UIButton) {
        print("plusTapped")
        if operationLabel.text == "" {
            operationLabel.text = "+"
            LastNumber = answerField.text!
            answerField.text = "0"        }
        else {
            enterTapped(nil)
            operationLabel.text = "+"
            
            
        }
        
    }
    @IBAction func multiplyTapped(theButton: UIButton) {
        print("multiplyTapped")
        if operationLabel.text == "" {
            operationLabel.text = "*"
            LastNumber = answerField.text!
            answerField.text = "0"
            
        }
        else  {
            enterTapped(nil)
            operationLabel.text = "*"
        }
    }
    @IBAction func minusTapped(theButton: UIButton) {
        
        if operationLabel.text == "" {
            print("minusTapped")
            operationLabel.text = "-"
            LastNumber = answerField.text!
            answerField.text = "0"        }
        else {
            enterTapped(nil)
            operationLabel.text = "-"
        }
        
    }
    @IBAction func divisionTapped(theButton: UIButton) {
        if operationLabel.text == "" {
            print("divisonTapped")
            operationLabel.text = "/"
            LastNumber = answerField.text!
            answerField.text = "0"
        }
        else {
            enterTapped(nil)
            operationLabel.text = "/"
        }
    }
    
    @IBAction func clearTapped(AnyObject : UIButton ) {
        answerField.text="0"
        operationLabel.text = ""
        LastNumber = ""
    }
    
    @IBAction func enterTapped(enter:AnyObject?) {
        
        var answer : Float = 0
        let a = Float(LastNumber!)
        let b = Float(answerField.text!)
        
    
        if operationLabel.text == "-" {
            answer = (a)! - (b)!;
        }
        else if (operationLabel.text == "+") {
            answer = (a)! + (b)!;
        }
        else if (operationLabel.text == "*") {
            answer = (a)! * (b)!
        }
        else if (operationLabel.text == "/") {
            answer = (a)! / (b)!
        }
        else {
            print (answer)
        }
        
        answerField.text = "\(answer)"
        operationLabel.text = ""
        LastNumber = ""
        
        
        
    }
}