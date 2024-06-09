//: [Previous](@previous)

import Foundation

/*
 Count the number of Duplicates
 "abcde" -> 0 # no characters repeats more than once
 "aabbcde" -> 2 # 'a' and 'b'
 "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
 "indivisibility" -> 1 # 'i' occurs six times
 "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs
 */

func countDuplicates(_ s:String) -> Int {
    let str = s.uppercased()
    let strArray = Array(str)
    var elementsAndCount = [Character:Int]()
    
    for i in strArray {
        if elementsAndCount[i] == nil {
            elementsAndCount[i] = 1
        } else {
            elementsAndCount[i]! += 1
        }
    }
    
    let duplicatedCount = elementsAndCount.filter({ $0.value > 1 }).count
    return duplicatedCount
    
  }

let input = "123456"
let output = countDuplicates(input)
print(output)


