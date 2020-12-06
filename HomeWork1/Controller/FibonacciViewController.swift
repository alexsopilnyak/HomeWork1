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
    
    if let numberFromTextField = textField.text {
      guard let number = Int(numberFromTextField) else { print("Casting error")
        self.resultLabel.text = "Could not cast number to Int"
        return
        
      }
      
      
      DispatchQueue.main.async {
        let fibonacciSequence = Fibonacci().fibonacciSequence(till: number)
        self.resultLabel.text = fibonacciSequence.description
      }
      
    }
    
  }
  
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    textField.text = ""
    resultLabel.text = ""
  }
  
}

