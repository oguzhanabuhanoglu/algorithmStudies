//: [Previous](@previous)

import Foundation

/*
 Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.
 Examples
     16  -->  1 + 6 = 7
    942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2
 */

func digitalRoot(_ n: Int) -> Int {
    var number = n
    while number >= 10 {
        number = sumOfDigits(number)
    }
    return number
}

// reduce fonksiyonu bir dizi tek bir değere indirgemek için kullanılır.Burda 0 olarak başlatılır.
func sumOfDigits(_ n: Int) -> Int {
    return String(n).reduce(0) { $0 + Int(String($1))! }
}

// Test examples
print(digitalRoot(9))  
print(digitalRoot(16))      // Output: 7
print(digitalRoot(942))     // Output: 6
print(digitalRoot(132189))  // Output: 6
print(digitalRoot(493193))  // Output: 2


