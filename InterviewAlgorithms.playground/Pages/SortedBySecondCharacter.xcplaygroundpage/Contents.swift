//: [Previous](@previous)

import Foundation

/*
 bir string dizisi verildiğinde, diziyi stringlerin ikinci karakterine göre artan düzende sıralayan algoritmayı yazınız.     ÖRNEK: Input = ["b1", "c2", "x3", "x4", "z0"]. Output = ["z0", "b1", "c2", "x3", "x4"]
 */
func sortBySecondCharacter(_ array: [String]) -> [String] {
    return array.sorted { first, second in
        
        let firstIndex = first.index(first.startIndex, offsetBy: 1)
        let secondIndex = second.index(second.startIndex, offsetBy: 1)
        
        return first[firstIndex] < second[secondIndex]
    }
}

// Örnek kullanım
let input = ["b1", "c2", "x3", "x4", "z0"]
let output = sortBySecondCharacter(input)
print(output) // Çıktı: ["z0", "b1", "c2", "x3", "x4"]
