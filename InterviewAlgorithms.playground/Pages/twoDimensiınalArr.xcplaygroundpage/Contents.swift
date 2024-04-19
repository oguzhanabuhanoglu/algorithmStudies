//: [Previous](@previous)

import Foundation

func sumOfMinimums(_ numbers: [[Int]]) -> Int {
  
  var neededElements: [Int] = []

  
  for arr in numbers {
    let sortedArray = arr.sorted()
    var a = sortedArray[0]
      neededElements.append(a)
  }
  
  var sum = 0
  for num in neededElements {
    sum += num
  }
  
  return sum

}

let a = [3, 4, 7, 8]
let b = [7, 10, 11, 122]
sumOfMinimums([[3, 4, 7, 8], [7, 10, 11, 122]])



// BEST WAY FOR THİS QUESTİON

/*func sumOfMinimums(_ numbers: [[Int]]) -> Int {
 return numbers.compactMap{$0.min()}.reduce(0, +)
}*/
