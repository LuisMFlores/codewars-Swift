//
//  ViewController.swift
//  Codewars
//
//  Created by Luis Flores on 4/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Methods
}

//Given a non-empty array of integers, return the result of multiplying the values together in order. Example:
//[1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
func grow(_ arr: [Int]) -> Int {
  return arr.reduce(1,*)
}

//Balanced number is the number that * The sum of all digits to the left
//of the middle digit(s) and the sum of all digits to the right of the
//middle digit(s) are equal*.

func balancedNumber(_ number: Int) -> String {
    let numbers = String(number).map(String.init).compactMap(Int.init)
    let splitNumbers = splitArray(numbers: numbers)
    return splitNumbers.leftSide.reduce(0, +) == splitNumbers.rightSide.reduce(0, +) ? "Balanced" : "Not Balanced"
}

func splitArray(numbers: [Int]) -> (leftSide: [Int], rightSide: [Int]) {
    if numbers.count < 3 { return ([0],[0]) }
    
    if numbers.count % 2 == 0 {
        let middleLeft = numbers.count / 2 - 1
        let middleRightOneAfter = numbers.index(middleLeft, offsetBy: 2)
        return (Array(numbers[numbers.startIndex..<middleLeft]), Array(numbers[middleRightOneAfter..<numbers.endIndex]))
    } else {
        let middleIndex = numbers.count / 2
        return (Array(numbers[numbers.startIndex..<middleIndex]), Array(numbers[numbers.index(after: middleIndex)..<numbers.endIndex]))
    }
}
