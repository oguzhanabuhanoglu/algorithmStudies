//: [Previous](@previous)

import Foundation

// MARK: ????????????????

func excelColumnToNumber(_ column: String) -> Int {
    let characters = Array(column.uppercased())
    var result = 0
    var multiplier = 1
    
    for char in characters.reversed() {
        if let value = char.wholeNumberValue {
            result += value * multiplier
        } else {
            // Character is a letter
            let value = Int(char.asciiValue! - Character("A").asciiValue! + 1)
            result += value * multiplier
        }
        multiplier *= 26
    }
    
    return result
}

// Test örnekleri
let input1 = "C"
let output1 = excelColumnToNumber(input1)
print("Input: \(input1), Output: \(output1)") // Çıktı: 3

let input2 = "BA"
let output2 = excelColumnToNumber(input2)
print("Input: \(input2), Output: \(output2)") // Çıktı: 53

let input3 = "AA"
let output3 = excelColumnToNumber(input3)
print("Input: \(input3), Output: \(output3)") // Çıktı: 27

let input4 = "ZY"
let output4 = excelColumnToNumber(input4)
print("Input: \(input4), Output: \(output4)") // Çıktı: 701
