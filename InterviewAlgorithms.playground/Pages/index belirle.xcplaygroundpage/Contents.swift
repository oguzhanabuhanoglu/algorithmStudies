//: [Previous](@previous)

import Foundation

// MARK: 2
// nums dizisi içinde toplamları targeta eşit olan iki sayıyı bulup array içinde ki indexlerini print ettir.

var nums = [2,3,11,15]
var target = 26

for num in nums {
    
    for (index,num2) in nums.enumerated() {
        
        if num + num2 == target{
            print("\(num), \(num2)")
            print(index)
        }
    }
}

