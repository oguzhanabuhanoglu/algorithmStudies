//: [Previous](@previous)

import Foundation
// stringin içindeki integerları topla sonuç 54 olmalı.

var str = "dfg30fgfg20dfgjm10f0x1203lkkml914ıyot3r1349dfg10214uı dog"

var strArray = Array(str)
print(strArray)
var sum = 0

for i in strArray{
    
    if let b = i.wholeNumberValue {
        sum += b
    }
    
}
print(sum)




