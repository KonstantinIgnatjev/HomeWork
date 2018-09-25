//: Playground - noun: a place where people can play

import UIKit


func myImt ( name: String, height: Double, weight: Double ) -> String {
    
    let namePerson = name
    let resultImt = height / (weight * weight)
    return " \(namePerson) your IMT is: " + String(NSString(format: "%.2f", resultImt))
    
}

print(myImt(name: "Kostya", height: 72, weight: 1.75))
