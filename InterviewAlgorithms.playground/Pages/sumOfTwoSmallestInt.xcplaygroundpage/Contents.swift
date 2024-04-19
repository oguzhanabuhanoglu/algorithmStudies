//: [Previous](@previous)

import Foundation

func sum(_ arr: [Int]) -> Int {
    
    let sortedArr = arr.sorted()
    let sum = sortedArr[0] + sortedArr[1]
    return sum
}

let test = [13, 3, 5, 131]
sum(test)
