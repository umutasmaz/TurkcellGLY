import UIKit

 /*LeetCode 13 Roman to Integer : Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
  
  Symbol       Value
  I             1
  V             5
  X             10
  L             50
  C             100
  D             500
  M             1000
  For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
  
  Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
  
  I can be placed before V (5) and X (10) to make 4 and 9.
  X can be placed before L (50) and C (100) to make 40 and 90.
  C can be placed before D (500) and M (1000) to make 400 and 900.
  Given a roman numeral, convert it to an integer.

*/

 /*func romanToInt(_ s: String) -> Int {
    var current = 0
    var ans = 0
    var previous = 0
    
    // Read from Right to Left
    for i in (0..<s.count).reversed() {
        let char = s[s.index(s.startIndex, offsetBy: i)]
        switch char {
        case "I":
            current = 1
        case "V":
            current = 5
        case "X":
            current = 10
        case "L":
            current = 50
        case "C":
            current = 100
        case "D":
            current = 500
        case "M":
            current = 1000
        default:
            break
        }

        if previous > current {
            ans -= current
        } else {
            ans += current
            previous = current
        }
    }
    return ans
}
print(romanToInt("III")) //  3
print(romanToInt("IV")) //  4
print(romanToInt("IX")) //  9
print(romanToInt("LVIII")) //  58
print(romanToInt("MCMXCIV")) // 1994 */




/*LeetCode 14  Longest Common Prefix : Write a function to find the longest common prefix string amongst an array of strings.
 If there is no common prefix, return an empty string "".
 
 Input: strs = ["flower","flow","flight"]
 Output: "fl"

*/
/*
let strs = ["flower","flow","flight"]
func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }
    var prefix = strs[0]
    for i in 1..<strs.count {
        while !strs[i].hasPrefix(prefix) {
            prefix = String(prefix.dropLast())
            if prefix.isEmpty {
                return ""
            }
        }
    }
    return prefix
}
 
let TestExample = ["flower","flow","flight"]
let expectedOutput = "fl"
let output = longestCommonPrefix(strs)

*/


