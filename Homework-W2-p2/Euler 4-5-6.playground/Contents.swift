import UIKit
/* ### Euler Question 4 : A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
  Find the largest palindrome made from the product of two 3-digit numbers. ### */

/*
var largestPalindrome = 0
for i in (100...999).reversed() {
    for j in (100...i).reversed() {
        let product = i * j
        let stringProduct = String(product)
        let reversedProduct = String(stringProduct.reversed())
        if stringProduct == reversedProduct && product > largestPalindrome {
            largestPalindrome = product
        }
    }
}
print("The largest palindrome made from the product of two 3-digit numbers is \(largestPalindrome)")*/



 /* ### Euler Question 5 : 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20? ###*/

 /* func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
 }
 func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
 }
 var result = 1
 for i in 2...20 {
    result = lcm(result, i)
 }
 print(result) */


 /*### Euler Question 6 : The sum of the squares of the first ten natural numbers is, 1^2+2^2+3^3 = 385
  The square of the sum of the first ten natural numbers is, (1+2+3+4....+10)^2 = 55^2 = 3025
  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640
  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
  
  */
/*
var sumOfSquares = 0
var sum = 0


for i in 1...100 {
  sumOfSquares += i * i
}

for i in 1...100 {
  sum += i
}

let squareOfSum = sum * sum

// calculate difference
let difference = squareOfSum - sumOfSquares

print(difference)*/

