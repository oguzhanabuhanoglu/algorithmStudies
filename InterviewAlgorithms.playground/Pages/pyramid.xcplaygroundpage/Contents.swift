//: [Previous](@previous)

import Foundation

func pyramid(_ n: Int) -> [[Int]] {
    var result: [[Int]] = []
    
    guard n > 0 else { return [] }
    
    for i in 1...n {
        let subarray = Array(repeating: 1, count: i)
        result.append(subarray)
    }
    
    return result
}

// Test cases
print(pyramid(0)) // Çıktı: []
print(pyramid(1)) // Çıktı: [[1]]
print(pyramid(2)) // Çıktı: [[1], [1, 1]]
print(pyramid(3)) // Çıktı: [[1], [1, 1], [1, 1, 1]]
