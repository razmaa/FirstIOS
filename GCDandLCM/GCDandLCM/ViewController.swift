//
//  ViewController.swift
//  GCDandLCM
//
//  Created by nika razmadze on 22.10.23.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var secondNum: UITextField!
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchLabel(_ sender: UISwitch) {
        if sender.isOn {
            label1.text = "GCD"
        } else {
            label1.text = "LCM"
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        firstNum.backgroundColor = UIColor.white
        secondNum.backgroundColor = UIColor.white
        
        if let number1 = Int(firstNum.text!), let number2 = Int(secondNum.text!){
            if label1.text == "GCD" {
                answer.text = String(calculateGCD(number1, number2))
            } else {
                answer.text = String(calculateLCM(number1, number2))
            }
        } else {
            firstNum.backgroundColor = UIColor.red
            secondNum.backgroundColor = UIColor.red
        }
        
    }
    
    
    func calculateGCD(_ a: Int, _ b: Int) -> Int {
        let remainder = a % b
        if remainder == 0 {
            return b
        }
        return calculateGCD(b, remainder)
    }
    
    func calculateLCM(_ a: Int, _ b: Int) -> Int { a * b / calculateGCD(a, b) }

}

