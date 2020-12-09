//
//  PiNumberViewController.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import UIKit

class PiNumberViewController: UIViewController {
  
  @IBOutlet weak var nthTextField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
    if let numberFromTextField = nthTextField.text {
      
      guard let index = Int(numberFromTextField) else {
        self.resultLabel.text = "Could not cast entered number to Int"
        return
      }
      
      if index < 0 || index > 14 {
        self.resultLabel.text = "Incorrect index. Please inpun index from 0...14"
      } else {
        let nthNumber = PiPresentation.digitOfPi(by: index)
        if let nthNumberOfPi = nthNumber {
          resultLabel.text = "\(index) digit of \(Double.pi) is \(nthNumberOfPi)"
        }
      }
    }
    
  }
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    resultLabel.text = "Nth number of Pi"
    nthTextField.text = ""
  }
  
}
