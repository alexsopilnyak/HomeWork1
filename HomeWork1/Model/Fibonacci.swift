//
//  Fibonacci.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import Foundation

struct Fibonacci {
  
  
  private func fibonacciRecursion(_ n: Int) -> (Int, Bool) {
    
    if n < 2  {
      return (n, false)
    } else {
      return fibonacciRecursion(n - 1).0.addingReportingOverflow(fibonacciRecursion(n-2).0)
      // return fibonacciRecursion(n - 1) + fibonacciRecursion(n-2)
    }
  }
  
  func sequence(till n: Int) -> [Int] {
    
    var sequence = [Int]()
    if n > 0 {
      for i in 1...n {
        !fibonacciRecursion(i).1 ? sequence.append(fibonacciRecursion(i).0) : sequence.append(0) // if value oferflowed -> add 0 to array
      }
    }
    
    
    return sequence
    
  }
  
}
