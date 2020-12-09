//
//  FibonacciViewController.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import UIKit

class FibonacciViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var clearButtonPressed: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func calculateButtonPressed(_ sender: UIButton) {
    var stringSequence = ""
    if let numberFromTextField = textField.text {
      guard let number = Int(numberFromTextField) else {
        self.resultLabel.text = "Could not cast entered number to Int"
        return
        
      }
      
        let fibonacciSequence = Fibonacci().sequence(till: number)
      
      for i in 0..<fibonacciSequence.count {
        stringSequence += "  \(fibonacciSequence[i].description)"
      }
      self.resultLabel.text = stringSequence
    }
    
  }
  
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    textField.text = ""
    resultLabel.text = "Fibonacci sequence"
  }
  
}

