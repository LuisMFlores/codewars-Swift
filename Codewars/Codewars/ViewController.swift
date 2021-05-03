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

// Create a function add(n)/Add(n) which returns a function
// that always adds n to any number

func add(_ n: Int) -> ((Int) -> Int) {
    return { (number: Int) -> Int in
        return n + number
    }
}

func addVariant(_ n: Int) -> ((Int) -> Int) {
    return { $0 + n }
}

// Simplified directions given so the user doesn't have to revisit a point where it has has been already (NORTH THEN SOUTH)

func dirReduc(_ arr: [String]) -> [String] {
    var newArr = [String]()
    arr.forEach { item in
        if let lastItem = newArr.last {
            if addToDirArray(lastStr: lastItem, newStr: item){
                newArr.append(item)
            } else {
                newArr.popLast()
            }
        } else {
            newArr.append(item)
        }
    }
    return newArr
}

func addToDirArray(lastStr: String, newStr:String) -> Bool {
    if lastStr == "NORTH" && newStr == "SOUTH" || lastStr == "SOUTH" && newStr == "NORTH" || lastStr == "EAST" && newStr == "WEST" || lastStr == "WEST" && newStr == "EAST" {
        return false
    }
    return true
}

