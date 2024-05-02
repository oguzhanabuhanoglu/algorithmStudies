//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.*/

func filteredNumsSum(_ int: Int) -> Int {
    
    var array: [Int] = []
    var sum = 0
    for num in 0...int - 1{
        if num % 3 == 0 {
            array.append(num)
            print(array)
        }else if num % 5 == 0 {
            array.append(num)
            print(array)
        }
    }
    
    
    for num in array{
        sum += num
    }
    
    return sum
}

filteredNumsSum(16)
