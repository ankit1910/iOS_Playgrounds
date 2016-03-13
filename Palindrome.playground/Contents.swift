//: Playground - noun: a place where people can play

import UIKit


print("Enter the string to check: ")
//let userInput = readLine()!

let userInput = "ankit"
let reverseInput = String(userInput.characters.reverse())

if (userInput == reverseInput) {
    print("this is a palindrome string.")
} else {
    print("this is not a palindrome string.")
}
