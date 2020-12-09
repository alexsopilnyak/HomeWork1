//
//  FactorialViewController.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import UIKit

class FactorialViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var recursionSwitch: UISwitch!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
    if let numberFromTextField = textField.text {
      guard let number = Int(numberFromTextField) else {
        self.resultLabel.text = "Could not cast number to Int"
        return
      }
      
      var result: (factorial: Int, hasOverflow: Bool)
      
      if number < 60 && number >= 0{
        switch recursionSwitch.isOn {
        case true: result = Factorial.calculateByRecursion(of: number)
        case false: result = Factorial.calculateByIteration(of: number)
        }
        
        if result.hasOverflow {
          resultLabel.text = "Int overflow. Try lower number"
        } else {
          resultLabel.text = result.factorial.description
        }
        
      } else {
        resultLabel.text = "Try enter another number"
      }
    }
    
  }
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    
    textField.text = ""
    resultLabel.text = ""
    
  }
  
  
}
