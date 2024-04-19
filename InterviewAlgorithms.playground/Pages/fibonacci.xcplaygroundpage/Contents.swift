//: [Previous](@previous)

import Foundation

var a = 1
var b = 1
var c = 0

print(a)
print(b)
for _ in 1...7{
    c = a + b
    a = b
    b = c
    print(c)
}
