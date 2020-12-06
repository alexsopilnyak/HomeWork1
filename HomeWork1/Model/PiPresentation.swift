//
//  PiPresentation.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import Foundation

struct PiPresentation {
  
  
  
  func digitOfPi(numberOfDigits: Int, indexOfDigit: Int) -> Character? {
    let piPresentedByString = String(format: "%.\(numberOfDigits)f", Double.pi)
    
    if indexOfDigit > piPresentedByString.count - 1 || numberOfDigits < 0 {
      return nil
    } else {
      let digitsArray = piPresentedByString.map {$0}
      
      return digitsArray[indexOfDigit]
      
    }
  }
  
}
