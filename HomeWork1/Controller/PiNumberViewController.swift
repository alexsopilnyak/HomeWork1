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
      
      
      let nthNumber = PiPresentation.digitOfPi(by: index)
      if let nthNumberOfPi = nthNumber {
        resultLabel.text = "\(index) digit of \(Double.pi) is \(nthNumberOfPi)"
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
