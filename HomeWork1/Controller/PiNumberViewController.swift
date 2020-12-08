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
  @IBOutlet weak var digitsTextField: UITextField!
  @IBOutlet weak var piLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
    if let nFromTextField = nthTextField.text, let digits = digitsTextField.text {
      
      guard let index = Int(nFromTextField) else {
        self.resultLabel.text = "Could not cast number to Int"
        print("Casting error")
        return
      }
      
      guard let digitsNumber = Int(digits) else {
        self.resultLabel.text = "Could not cast number of digits to Int"
        print("Casting error")
        return
      }
      
      let nthNumber = PiPresentation.digitOfPi(digitsNumber, index)
      if let nthNumberOfPi = nthNumber.0, let piNumber = nthNumber.1 {
        resultLabel.text = nthNumberOfPi.description
        piLabel.text = piNumber
      } else {
        self.resultLabel.text = "Index could not be more than N"
      }
      
      
    }
    
  }
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    resultLabel.text = ""
    nthTextField.text = ""
  }
  
}
