import UIKit

// Question 1: Bir sınıfta en az bir yazılım dilini bilenlerin sayısı 24, sadece swift bilenler 12, sadece kotlin bilenler 8 olduğuna göre her iki dili bilen kaç kişi vardır?

/*var allStudent:Set<String>=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"]

var swiftStudent: Set<String> = ["1","2","3","4","5","6","7","8","9","10","11","12"]
var kotlinStudent: Set <String> = ["13","14","15","16","17","18","19","20"]

let union = swiftStudent.union(kotlinStudent)
let substract  = allStudent.subtracting(union)
 
print(substract)
print(substract.count) */

// Question 2 :Bir sayının asal olup olmadığını bulan bir fonksiyon yazınız

/*func isPrime (number : Int) -> Bool{
    if  number <= 1  {
        return false
    }
    if  number <= 3 {
        return true
     
    }
    if number % 2 == 0 || number % 3 == 0 {
        return false
    }
    var i = 5
    while i * i <= number {
        if number % i == 0 || number % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    return true
}

isPrime(number: 17) */

/*Question 3 : Fonksiyona parametre olarak verilen sayıya göre + - karakterlerini ekrana yazdıran bir fonksiyon yazınız.
  Örneğin 1 için sadece +, 2 için +-, 5 için +-+-+ olmalıdır */

/*func printSigns(_ number: Int) {
    var signs = ""
    for i in 1...number {
        if i % 2 == 0 {
            signs += "-"
        } else {
            signs += "+"
        }
    }
    print(signs)
}
printSigns( 5) */

// Question : 4 Fonksiyona parametre olarak verilen bir sayının en büyük olacak şekilde 5 sayısını ilgili basamağa koyunuz.
//Örneğin parametre olarak 0 verildiyse çıktı 50 olmalıdır. Parametre 28 -> 528, Parametre 920 -> 9520 olmalıdır


