//
//  FactorialCalculator.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import Foundation

struct Factorial {
  
  static func calculateByIteration(of number: Int) -> (Int, Bool) {  //with
    var overflowResultTuple = (1, false)

    if number == 0 {
      return (0, false)
    } else {
      for i in 1...number {
        overflowResultTuple = overflowResultTuple.0.multipliedReportingOverflow(by: i)
      }
      
      return overflowResultTuple
    }
  }
  
  static func calculateByRecursion(of number: Int) -> (Int, Bool) {
    
    switch number {
    case 0: return (0, false)
    case 1: return (1, false)
    default:
      return number.multipliedReportingOverflow(by: calculateByRecursion(of: number - 1).0)
    }
  }
  
}
