//--: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"
print("Hello world!")

let a:Float
a = 4
print(a)
let apples = 3
let str1 = String(apples)
let appleSummary = "I have \(apples) apples."
var emptyDic = [String:Float]()
emptyDic["a"] = 2.1

let scores = [23,34,46,57,63,72,88]
var nums = 0

for score in scores{
    if score > 50{
        nums += 3
    }else{
        nums += 1
    }
}
print(nums)



var optionalString:String? = "Hello"
print(optionalString == nil)

var optionalName:String? = nil
var greeting = "Hello"

if let name = optionalName{
    greeting = "Hello, \(name)"
}else{
    greeting = "Hello, nil"
}

print(greeting)

let nickName:String? = nil
let fullName:String = "John Smith"

let name = "Hi \(nickName ?? fullName)"


let vegetable = "rad peper"
switch vegetable{
case "celery":
    print("Add some")
case "cucumber","watercress":
    print("great")
case let x where x.hasSuffix("peper"):
    print("is it a spicy?")
default:
    print("Good")
}



let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,4,7,11],
    "Square" : [1,4,9,16,25],
]
var largest = 0
for(kind,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += 1
}
print(firstForLoop)

func greet(name:String,lunch:String) -> String {
    return "Hello " + name + ", I eat " + lunch + " for lunch"
}
greet("Peter", lunch: "Matton")
greet(name: String, lunch: String)


func calStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max{
            max = score
        }else if score < min{
            min = score
        }
        
        sum += score
    }
    return(min,max,sum)
}

let statistics = calStatistics([5,3,100,3,9])
print(statistics.sum)
print(statistics.0)

func sumOf(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}
sumOf()
sumOf(234,323333333333333,63)


func averageOf(numbers:Double...) -> Double {
    var sum:Double = 0
    var count:Double = 0
    for number in numbers {
        sum += number
        count++
    }
    return sum/count
}

averageOf(1,2,3,4,5,6)



func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int)-> Bool {

    return number < 10
}
var numbers = [1,2,9,4,5]
hasAnyMatches(numbers, condition: lessThanTen)


var numbers = [1,2,9,4,5]
let sortedNumbers = numbers.sort { $0 > $1 }
print(sortedNumbers)
*/

class Shape{
    var numberOfSides = 0
    let num = 4
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func secondDescription(nums:Int) -> String {
        return "The number of the shape is \(nums)"
    }
}
var shape = Shape()
shape.numberOfSides = 8
shape.simpleDescription()
shape.secondDescription(333)


var set: Set<Int> = [1,2,3,4,5,66,7,88,99,234]





