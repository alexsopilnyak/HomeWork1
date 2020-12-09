//
//  PiPresentation.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import Foundation

struct PiPresentation {
  
  static func digitOfPi(by index: Int) -> Character? {
    let piPresentedByString = String(Double.pi)
    
    if index > piPresentedByString.count - 1 {
      return nil
    } else {
      let digitsArray = piPresentedByString.map {$0}
      
      return digitsArray[index + 2]
      
    }
  }
  
}
