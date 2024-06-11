//: [Previous](@previous)

import Foundation

/* A friend of mine takes the sequence of all numbers from 1 to n (where n > 0).
 Within that sequence, he chooses two numbers, a and b.
 He says that the product of a and b should be equal to the sum of all numbers in the sequence, excluding a and b.
 Given a number n, could you tell me the numbers he excluded from the sequence?
 */

func removNb(_ n: Int) -> [(Int,Int)] {

    let arr = Array(1...n)
    let sum = arr.reduce(0, +)
    var result: [(Int, Int)] = []
    
    for a in arr {
        for b in arr {
            if sum - a - b == a * b {
                result.append((a, b))
            }
        }
    }
    return result
}


let output = removNb(26)
print(output)


