import UIKit

// MARK: 1
// str stringinde hangi kelimelerin kaç kez tekrarladığını hesaplayan bir algoritma yaz.

var str = "merhaba ben oğuzhan bu benim ilk algoritma çalışmam bu son olmayacak benim algoritma öğrenmem lazım ilk çalışmam başladı."

let kelimeler = str.components(separatedBy: .whitespaces)
//let kelimeler = str.components(separatedBy: " ") -> this is also work like .split
//let kelimeler = str.map({ String($0) }) -> this is also work but it is include whitespaces.
print(kelimeler.count)

var kelimeVeAdetler = [String:Int]()

for kelime in kelimeler{
    if kelimeVeAdetler[kelime] == nil {
        kelimeVeAdetler[kelime] = 1
    }else{
        kelimeVeAdetler[kelime]! += 1
    }
}

var list = kelimeVeAdetler.sorted(by: { $0.value > $1.value })

for (key, value) in list{
    print("\(key): \(value)")
}


