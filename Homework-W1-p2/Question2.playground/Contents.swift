import UIKit
/*Elimizde uzun bir cümle olsun. Bazı kelimelerin tekrar ettiği bir cümle düşün.İstediğimiz ise , hangi kelimeden kaç tane kullanıldığını bulmak.  String = "merhaba nasılsınız bu gün hava güzel mi  ben iyiyim siz nasılsınız "*/

let sentence = "merhaba nasılsınız bu gün hava güzel mi ben bu iyiyim siz nasılsınız bu merhaba"
var wordCounts = [String: Int]()

let words = sentence.components(separatedBy: " ")

for word in words {
    if let count = wordCounts[word] {
        wordCounts[word] = count + 1
    } else {
        wordCounts[word] = 1
    }
}

for (word, count) in wordCounts {
    print("\(word) : \(count) kez ")
}
