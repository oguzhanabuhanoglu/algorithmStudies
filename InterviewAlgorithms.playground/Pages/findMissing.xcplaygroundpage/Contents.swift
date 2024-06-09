//: [Previous](@previous)

import Foundation

/*
 aritmetik bir dizide ki eksik numarayı bul.
 Exp:
 [1, 3, 5, 9, 11]  burada 7 eksik onu yazdırmam lazım.
 */


func findMissing(_ arr: [Int]) -> Int {
    
    let n = arr.count
    let totalDiff = arr.last! - arr.first!
    let commonDiff = totalDiff / n
    
    for i in 0..<n {
        if arr[i+1] - arr[i] != commonDiff {
            return arr[i] + commonDiff
        }
    }
    
    return -1
}

let arr = [1, 3, 5, 9, 11]
let output = findMissing(arr)
print(output)
