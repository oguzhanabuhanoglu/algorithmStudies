//: [Previous](@previous)

import Foundation

func expandedForm(_ num: Int) -> String {
    var result = ""
    var multiplier = 1
    var tempNum = num
    
    while tempNum > 0 {
        let digit = tempNum % 10
        if digit != 0 {
            result = "\(digit * multiplier)" + (result.isEmpty ? "" : " + ") + result
        }
        multiplier *= 10
        tempNum /= 10
    }
    
    return result
}

// Test cases
print(expandedForm(12))    // Output: "10 + 2"
print(expandedForm(42))    // Output: "40 + 2"
print(expandedForm(70304)) // Output: "70000 + 300 + 4"
