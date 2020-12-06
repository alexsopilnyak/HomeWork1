//
//  FactorialCalculator.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import Foundation

struct FactorialCalculator {
  
  static func iterationCalculation(of number: Int) -> Int {
    var result = 1
    
    if number == 0 {
      return 0
    } else {
      for i in 1...number {
        result *= i
      }
      
      return result
    }
  }
  
  static func recursionCalculation(of number: Int) -> Int {
    
    switch number {
    case 0: return 0
    case 1: return 1
    default:
      return number * recursionCalculation(of: number - 1)
    }
  }
  
}
