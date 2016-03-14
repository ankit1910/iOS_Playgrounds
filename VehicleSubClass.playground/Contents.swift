//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var name :String
    var price :Int

    init?(name: String, price: Int) {
        self.name = name
        self.price = price
        
        if name.isEmpty || price == 0 {
            return nil
        }
    }
    
    func to_s() -> String {
        return("Name: \(name) and Price: \(price)")
    }
}


class Bike: Vehicle {
    var dealer :String
    
    init?(name: String, price: Int, dealer: String) {
        self.dealer = dealer
        super.init(name: name, price: price)
        
        if dealer.isEmpty {
            return nil
        }
    }
    
    override func to_s() -> String {
        return("Name: \(name) and Price: \(price) and Dealer: \(dealer)")
    }
    
}

var v = Vehicle(name: "bike", price: 1000)!

v.to_s()

var b = Bike(name: "mojo", price: 1000000, dealer: "mahindra")!

b.to_s()





