//: Playground - noun: a place where people can play

import UIKit

class Interest {
    static let rate = 10.0
    let principal :Double
    let time: Double
    
    init(principal: Double, time: Double) {
        self.principal = principal
        self.time = time
    }
    
    func simpleInterest() -> Double {
        return(principal * (time) * (Interest.rate/100))
    }
    
    func compoundInterest() -> Double {
        return((principal * pow((1+(Interest.rate/100)), time)) - principal)
    }
    
    func differenceInterest() -> Double {
        return(compoundInterest() - simpleInterest())
    }
}


var i = Interest(principal: 1000.0, time: 2.0)

i.simpleInterest()
i.compoundInterest()
i.differenceInterest()



