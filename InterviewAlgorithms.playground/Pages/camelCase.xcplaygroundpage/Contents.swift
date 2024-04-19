//: [Previous](@previous)

import Foundation
//make the given string camelCase type string

func camelCase(_ str: String) -> String {
    
    let words = str.components(separatedBy: " ")
  
    /*for word in words {
        var firstLetter = String(word.first).uppercased()
        var restOfWord = String(word.dropFirst())
        var camelCaseString = firstLetter + restOfWord
    }.joined()*/
    
    var camelCaseString = words.map { word in
        let firstLetters = String(word.first!).uppercased()
        let restOfWord = String(word.dropFirst())
        return firstLetters + restOfWord
    }.joined()
    
    return camelCaseString
}

let result1 = camelCase("hello case")
print(result1)
