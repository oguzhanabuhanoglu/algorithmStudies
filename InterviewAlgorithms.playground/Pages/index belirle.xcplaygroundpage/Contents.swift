//: [Previous](@previous)

import Foundation

// MARK: 2
// nums dizisi içinde toplamları targeta eşit olan iki sayıyı bulup array içinde ki indexlerini print ettir.

var nums = [2,3,11,15]
var target = 26

for (index1,num1) in nums.enumerated() {
    
    //enumerated() metodu, bir dizideki her elemanı ve bu elemanın indeksini bir çift olarak döner.
    for (index2,num2) in nums.enumerated() {
        
        if num1 + num2 == target{
            print("\(num1), \(num2)")
            print(index1 ,index2)
        }
    }
}

