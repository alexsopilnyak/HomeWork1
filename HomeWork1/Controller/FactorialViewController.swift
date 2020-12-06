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
      guard let number = Int(numberFromTextField) else { print("Casting error")
        self.resultLabel.text = "Could not cast number to Int"
        return
      }
      
      if recursionSwitch.isOn {
        resultLabel.text = FactorialCalculator.recursionCalculation(of: number).description
      } else {
        resultLabel.text = FactorialCalculator.iterationCalculation(of: number).description
      }
    }
  }
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    textField.text = ""
    resultLabel.text = ""
  }
  
  
}
