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

