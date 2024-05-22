//: [Previous](@previous)

import Foundation

func findRotationIndex(_ str1: String, _ str2: String) -> Int {
    if str1.count != str2.count {
        return -1
    }
  
  
    
    for i in 0..<str2.count {
        let rotated = str2.dropFirst(i) + str2.prefix(i)
        if rotated == str1 {
            return i
        }
    }
    
    return -1
}

findRotationIndex("Mouse", "mouse")
