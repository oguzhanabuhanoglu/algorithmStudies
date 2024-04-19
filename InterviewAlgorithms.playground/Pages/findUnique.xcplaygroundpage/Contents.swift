//: [Previous](@previous)

import Foundation

//print the unique index of array

func findUniq(_ arr: [Int]) -> Int {
    
    var countDic = [Int : Int]()
    
    for num in arr {
        countDic[num, default: 0] += 1
    }
    
    for (num, count) in countDic {
        if count == 1 {
            return num
        }
    }
    
    return 0
}

let result = findUniq([1,1,2,1,1,1])

