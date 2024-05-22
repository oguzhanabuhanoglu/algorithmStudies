//: [Previous](@previous)

import Foundation

func BiggestNumber(_ array: [Int]) -> Int {
    
    var biggestNum = 0
    
    for num1 in array {
        for num2 in array {
            if num1 >= num2 {
                biggestNum = num1
            }
        }
    }
    
    return biggestNum
}

BiggestNumber([1,2,3])
