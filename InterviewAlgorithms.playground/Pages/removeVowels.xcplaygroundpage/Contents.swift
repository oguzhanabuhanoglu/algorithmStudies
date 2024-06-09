//: [Previous](@previous)

import Foundation

//: Remove vowels from str

func removeVowels(_ str: String) -> String {
    let vowels: Set<Character>  
    
    // Filter out vowels from the string
    let result = str.filter { !vowels.contains($0) }
    print(result)
    return result
}

let string = "Bu web sitesi gizlidir. LOL"
removeVowels(string)





