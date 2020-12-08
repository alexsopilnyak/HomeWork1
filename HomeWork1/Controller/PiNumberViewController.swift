//
//  PiNumberViewController.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import UIKit

class PiNumberViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
    if let numberFromTextField = textField.text {
      
    }
    
  }
  
  @IBAction func clearButtonPressed(_ sender: UIButton) {
    resultLabel.text = ""
    textField.text = ""
  }
  
}
