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
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
    if let numberFromTextField = textField.text {
      guard let number = Int(numberFromTextField) else{print("Casting error"); return}
      
      let fibonacciSequence = Fibonacci().fibonacciSequence(till: number)
      resultLabel.text = fibonacciSequence.description
    }
    
    
    
    
    
    
    
  }
  
}
