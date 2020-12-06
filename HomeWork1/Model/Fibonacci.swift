//
//  Fibonacci.swift
//  HomeWork1
//
//  Created by Alexandr Sopilnyak on 06.12.2020.
//

import Foundation

struct Fibonacci {
  
   private func fibonacciRecursion(_ n: Int) -> Int {

    if n < 2  {
      return n
    } else {
      return fibonacciRecursion(n - 1) + fibonacciRecursion(n-2)
    }
  }

   func fibonacciSequence(till n: Int) -> [Int] {
    
    var sequence = [Int]()

    for i in 0...n {
      sequence.append(fibonacciRecursion(i))
    }

    return sequence
    
  }
  
}
