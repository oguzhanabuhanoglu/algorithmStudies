//: [Previous](@previous)

import Foundation

func lastWordCountOfStr(_ str: String) -> Int {
    
    let strArray = str.components(separatedBy: .whitespaces)
    let lastWord = strArray.last
    return lastWord?.count ?? 0
    
}

lastWordCountOfStr("deneme stringi")

