//: Playground - noun: a place where people can play

import UIKit


var dict = [String: Int]()

let inputString = "ababasdn;kajsd;kjns"

for chard in inputString.characters {
    let value = dict[String(chard)]
    
    if value != nil {
        dict[String(chard)] = dict[String(chard)]! + 1
    } else {
        dict[String(chard)] = 1
    }
}

print(dict)





