//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Hubert Lachaîne on 2020-06-27.
//  Copyright © 2020 Hubert Lachaîne. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var Button9: UIButton!
    
    @IBOutlet weak var Button8: UIButton!
    
    @IBOutlet weak var Button7: UIButton!
    
    @IBOutlet weak var PlusButton: UIButton!
    
    @IBOutlet weak var Button6: UIButton!
    
    @IBOutlet weak var Button5: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var MinusButton: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var MultButton: UIButton!
    
    @IBOutlet weak var Decimal: UIButton!
    
    @IBOutlet weak var Button0: UIButton!
    
    @IBOutlet weak var Clear: UIButton!
    
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    @IBOutlet weak var Display: UILabel!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    let MaxDigits = 9
    var currentNumber = ""
    var operation = ""
    var firstNumber = 0.0
    var secondNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ErrorLabel.alpha = 0
        Display.text = "0"
        
    }
    
    @IBAction func nine(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "9"
        Display.text = currentNumber
    }
    @IBAction func eight(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "8"
        Display.text = currentNumber
    }
    @IBAction func seven(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "7"
        Display.text = currentNumber
    }
    @IBAction func six(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "6"
        Display.text = currentNumber
    }
    @IBAction func five(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "5"
        Display.text = currentNumber
    }
    @IBAction func four(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "4"
        Display.text = currentNumber
    }
    @IBAction func three(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "3"
        Display.text = currentNumber
    }
    @IBAction func two(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "2"
        Display.text = currentNumber
    }
    @IBAction func one(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "1"
        Display.text = currentNumber
    }
    @IBAction func decimal(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "."
        Display.text = currentNumber
    }
    @IBAction func zero(_ sender: Any) {
        guard currentNumber.count <= MaxDigits else {
            tooManyCharactersError()
            return
        }
        
        currentNumber += "0"
        Display.text = currentNumber
    }
    @IBAction func Clear(_ sender: Any) {
        currentNumber = ""
        operation = ""
        Display.text = "0"
        
    }
    @IBAction func plus(_ sender: Any) {
        let current = Display.text!
        firstNumber = Double(current)!
        currentNumber = ""
        operation = "plus"
        Display.text = "0"
    }
    @IBAction func minus(_ sender: Any) {
        let current = Display.text!
        firstNumber = Double(current)!
        currentNumber = ""
        operation = "minus"
        Display.text = "0"
    }
    @IBAction func multiplication(_ sender: Any) {
        let current = Display.text!
        firstNumber = Double(current)!
        currentNumber = ""
        operation = "times"
        Display.text = "0"
    }
    @IBAction func division(_ sender: Any) {
        let current = Display.text!
        firstNumber = Double(current)!
        currentNumber = ""
        operation = "divide"
        Display.text = "0"
    }
    @IBAction func equals(_ sender: Any) {
        let current = Display.text!
        let secondNumber = Double(current)!
        
        switch operation {
        case "plus":
            let result = (firstNumber + secondNumber)
            firstNumber = result
            Display.text = String(result)
            currentNumber = ""
        case "minus":
            let result = (firstNumber - secondNumber)
            Display.text = String(result)
            currentNumber = ""
        case "times":
            let result = (firstNumber * secondNumber)
            Display.text = String(result)
            currentNumber = ""
        case "divide":
            let result = (firstNumber / secondNumber)
            Display.text = String(result)
            currentNumber = ""
        default:
            ErrorLabel.text = "Unknown error occured while computing. Please clear and try again!"
        }
    }
    
    func tooManyCharactersError() {
        ErrorLabel.text = "You've exceeded the limit of characters!"
        ErrorLabel.alpha = 1
    }
    
    
    
    
    
    
    
    
    
    

}

