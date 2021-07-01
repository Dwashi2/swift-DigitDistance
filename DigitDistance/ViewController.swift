//
//  ViewController.swift
//  DigitDistance
//
//  Created by Daniel Washington Ignacio on 01/07/21.
//

/*
 The digit distance between two numbers is the total value of the difference between each pair of digits.

 To illustrate:

 digitDistance(234, 489) ➞ 12
 // Since |2 - 4| + |3 - 8| + |4 - 9| = 2 + 5 + 5
 Create a function that returns the digit distance between two integers.

 Examples

 digitDistance(121, 599) ➞ 19

 digitDistance(12, 12) ➞ 0

 digitDistance(10, 20) ➞ 1
 Notes

 Both integers will be exactly the same length.
 All digits in num2 have to be higher than their counterparts in num1.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.digitDistance(121, 599))
        print(self.digitDistance(12, 12))
        print(self.digitDistance(10, 20))
    }
    func digitDistance(_ num1: Int, _ num2: Int) -> Int {
        var count: Int = 0
        let arr1 = String(num1).map {
            return Int(String($0))
        }
        let arr2 = String(num2).map {
            return Int(String($0))
        }
        for n in 0..<arr1.count{
            count = (arr1[n] ?? 0) - (arr2[n] ?? 0) + count
        }
        return -count
    }


}

