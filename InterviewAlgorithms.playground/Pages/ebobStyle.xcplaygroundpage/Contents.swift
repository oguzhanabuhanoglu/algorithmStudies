//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*Bir Bölen ve Sınır verildiğinde, en büyük N tamsayısını bulun Öyle ki,

Koşullar :
N bölene bölünebilir

N sınırdan küçük veya ona eşit

N, 0'dan büyüktür.*/

//bölene bölünen ve sınırı geçmeyecek şekilde en büyük N pozitif tam sayıyı bul.

func maxMultiple(_ divisor: Int, _ bound: Int) -> Int {
    var result = 0
    for i in stride(from: bound, through: divisor, by: -1) {
        if i % divisor == 0 {
            result = i
            break
        }
    }
    return result
}

// Test cases
print(maxMultiple(2, 7))   // Output: 6
