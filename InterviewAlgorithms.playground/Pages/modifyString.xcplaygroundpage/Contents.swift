//: [Previous](@previous)

import Foundation

func modify(_ str: String) -> String {
    if str.count <= 4 {
        return str
    }
    
    let lastFour = String(str.suffix(4))
    let masked = String(repeating: "#", count: str.count - 4)
    
    return masked + lastFour
}

modify("DENEMESTRİNG")
