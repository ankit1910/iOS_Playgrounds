//: Playground - noun: a place where people can play

import UIKit

class Customer {
    
    // MARK: Properties
    static var numberUser = 0
    static let InitialBalance = 1000
    let name: String
    let accountNo: Int
    var balance: Int
    
    // MARK: Initialization
    init?(name: String) {
        self.name = name
        self.balance = Customer.InitialBalance
        self.accountNo = ++Customer.numberUser
        
        if (name.isEmpty) {
            return nil
        }
    }
    
    // MARK: Methods
    func deposit(amount: Int) {
        if amount > 0 {
            self.balance += amount
        } else {
            print("wrong input")
        }
    }
    
    func withdraw(amount: Int) {
        if amount > 0 && amount < self.balance {
            self.balance -= amount
        } else {
            print("wrong input")
        }
    }
}


var a = Customer(name: "ankit")!
var b = Customer(name: "ankitdon")!

b.name
b.accountNo
b.balance
a.balance
b.deposit(10)
b.balance
a.balance
b.withdraw(30)
b.balance
a.balance
