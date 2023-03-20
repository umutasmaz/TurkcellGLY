import UIKit
// Soru 1 :Girilen bir sayının asal olup olmadığını bulan bir extension yazınız.
 
 /*extension Int {
  func isPrime() -> Bool {
  guard self > 1 else {
  return false
  }
  for i in 2..<self {
  if self % i == 0 {
  return false
  }
  }
  return true
  }
  }
  
  let number = 17
  if number.isPrime() {
  print("\(number) is a prime number.")
  } else {
  print("\(number) is not a prime number.")
  }
  */
 
//İki parametreli ve FARKLI tipli bir generic örneği yapınız. (T,U)

func combine<T, U>(first: T, second: U) -> (T, U) {
    return (first , second)
}

let result = combine(first: 78, second: "Karabük/Safranbolu")
print(result)

 
