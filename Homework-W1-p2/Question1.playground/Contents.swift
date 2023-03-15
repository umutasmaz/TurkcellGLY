/*  Question 1 :  Elimizde sadece harflerden oluşan (noktalama işareti veya sayılar olmayan ) uzun bir  string olsun .Bu string içinde bazı harflerin tekrarladığını düşünün.  Örnek String : "aaba kouq buz" olsun. Tekrar sayısı 2 verildiğinde : 2 kere tekrar edenler silinmeli ve geriye kalan string print edilmeli. Verilen tekrar sayısı kadar bulunan harfler silinmeli geriye kalan metin yazdırılmalıdır. */

// if you wanna see something amazing you can try this one.
/*let str = "kq9w7twez2r6fğqw5ixpm fht279oğz5cx6pa ft17w96ğ5px2z fnqup67ma5ğxq9trz2a "
let repeatCount = 4 */

let str = "aaba kouq bux"
let repeatCount = 3
var charDict = [Character: Int]()
for char in str {
    charDict[char, default: 0] += 1
}

var result = ""
for char in str {
    if charDict[char] != repeatCount {
        result.append(char)
    }
}

print(result)
