//: [Previous](@previous)

import Foundation

// MARK: 3
//verilen kelimenin tersini ekrana yazdır.

var str2 = "asd-qwe-fgh-rty"
//var output = "dsa-ewq-hgf-ytr"
var reversed = ""

var array = str2.split(separator: "-")
print(array)

for kelime in array {
    //print(kelime)
    for harf in kelime.reversed(){
        //print(harf)
        reversed += "\(harf)"
    }
    
    reversed += "-"
}
reversed.removeLast()
//print(reversed)


// MARK: Another way

/*var str = "HELLO"

var array2 = [Character]()

for i in str {
    array2.append(i)
}

for a in stride(from: array.count, through: 0, by: -1){
    print(array2[a], terminator: "")
}*/









