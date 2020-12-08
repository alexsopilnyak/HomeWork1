//
//  PiPresentation.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import Foundation

struct PiPresentation {
  
  
  
  static func digitOfPi(_ numberOfDigits: Int,_ indexOfDigit: Int) -> (Character?, String?) {
    let piPresentedByString = String(format: "%.\(numberOfDigits)f", Double.pi)
    print(piPresentedByString)
    
    if indexOfDigit > piPresentedByString.count - 1 || numberOfDigits <= 0 || indexOfDigit > numberOfDigits {
      return (nil, nil)
    } else {
      let digitsArray = piPresentedByString.map {$0}
      
      return (digitsArray[indexOfDigit + 1], piPresentedByString)
      
    }
  }
  
}
