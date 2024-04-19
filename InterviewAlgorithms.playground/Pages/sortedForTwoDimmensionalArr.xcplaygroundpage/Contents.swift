//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: sorted for two dimensional arrays

func flattenAndSort(_ array: [[Int]]) -> [Int] {
    // Step 1: Flatten the array
    let flattenedArray = array.flatMap { $0 }
    
    // Step 2: Sort the flattened array
    let sortedArray = flattenedArray.sorted()
    
    return sortedArray
}

// Test case
let inputArray = [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]]
let result = flattenAndSort(inputArray)
print(result) // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]


// flatMap özeliiği array arraylerini açıp (düzleyip) tek bir array döndürmede yaygın oalrak kullanılıri.
//burda da verilen two dimensional arraye sort işlemini uygulamayı kolaylaştırmak için kullanılmıstır.
