import UIKit


// Euler Question 1 : Find the sum of all the multiples of 3 or 5 below 1000.
 
/*
 var total = 0
  for num in 0...1000 {
    if num % 3 == 0 || num % 5 == 0{
        print(num)
         total += num
        }
}
    print(total)
*/



/* Euler Question 2 : By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms. */
 
 /* var last = 0
 var secondLast = 0
 var n = 0
 var total = 0
 
 while last < 4000000 {
 if n <= 1 { last = n }
 let counter = last + secondLast
 if counter % 2 == 0 { total += counter }
 secondLast = last; last = counter
 n+=1
 }
 print(total)
 */

/*A prime factor is a natural number, other than 1, whose only factors are 1 and itself. The first few prime numbers are actually 2, 3, 5, 7, 11, and so on. Now we can also use what's called prime factorization for numbers which actually consist of using factor trees.*/
 //Euler Question 3 : What is the largest prime factor of the number 600851475143 ?

var number = 600851475143
var prime = 2
var largest = 0
while number != 1 {
    if number % prime == 0 {
        // print(number)
        largest = prime;   number /= prime     }
         else {         prime += 1     } }
print(largest)
