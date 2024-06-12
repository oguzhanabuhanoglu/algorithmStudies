//: [Previous](@previous)

import Foundation

/*
 Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
 */

func splitStringIntoPairs(_ str: String) -> [String] {
    var result: [String] = []
    var index = str.startIndex

    while index < str.endIndex {ü
        let nextIndexDeneme = str.index(index, offsetBy: 2, limitedBy: str.endIndex) ?? str.endIndex
        let nextIndex = str.index(index, offsetBy: 2, limitedBy: str.endIndex) ?? str.endIndex
        let pair = str[index..<nextIndex]

        if pair.count == 2 {
            result.append(String(pair))
        } else {
            result.append(String(pair) + "_")
        }
        
        index = nextIndex
    }
    
    return result
}

// Örnekler
print(splitStringIntoPairs("abc"))    // ["ab", "c_"]
print(splitStringIntoPairs("abcdef")) // ["ab", "cd", "ef"]

