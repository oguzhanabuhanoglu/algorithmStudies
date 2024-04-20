//: [Previous](@previous)

import Foundation

func intToRoman(_ num: Int) -> String {
    
    let romanMapping: [(Int, String)] = [
        (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
        (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
        (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
    ]
    
    
    let sortedMapping = romanMapping.sorted { $0.0 > $1.0 }
    
    var romanNumeral = " "
    var remainingNumber = num
    
    for (value, numeral) in sortedMapping {
        while remainingNumber >= value {
            romanNumeral += numeral
            remainingNumber -= value
        }
    }
    
    return romanNumeral

}

intToRoman(1200)
