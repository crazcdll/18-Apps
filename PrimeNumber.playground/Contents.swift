//: Playground - noun: a place where people can play

import UIKit
//var str = "Hello, playground"

var num = 2...1000
var total = 0
var count = 0

for i in num {
    for var m in 1...i {
        if i % m == 0 {
            //print("\(m) is not a prime number!")
            total++
        }
    }
    
    if total == 2 {
        print("\(i) is a prime number!")
        count++
    }
    total = 0
}

num.last

print("There are \(count) prime numbers in 1 -- \(num.last!)")