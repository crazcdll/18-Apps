// Playground - noun: a place where people can play

import UIKit



/*
var str = "Hello, playground"

println("Hello Swift")

let max=100

var index=1

index=2

var x=0.0,y=2,z=100



var websiteName:String

websiteName="www.baidu.com"

websiteName="123"

let registrationResult = (true,"慕课女神","女")

let (isRegisterSuccess,nickname,gender) = registrationResult

isRegisterSuccess
nickname
gender

isRegisterSuccess

var imOptionalVariable:Int?
imOptionalVariable = 12

let userInput = "10"
var age = userInput.toInt()

if age != nil
{
    println("User's age is " + String(age!))
}else{
    println("用户名非法")
}


let a=5
let b=2
var c=0

c=a+b

if c==7{
    println("dd")

}
Int.min
Int.max

//a ?? b   a != nil ? a1 :


for index in 1..<10
{
    index
}

var names=["abbbb","b","c"]

for i in 0..<names.count
{names[i]}

var name="Hello,World!哈哈\u{1F496}"

for c in name
{
    println(c)
}

var str3:NSString=name   //以16位计算
str3.length

countElements(name)   //可以计算任意字节长度的类型






var count = 0
let names = [
    "abc",
    "abd",
    "abf",
    "bfd",
    "bgd",
    "bad"
]


for name in names{
    if name.hasPrefix("a")
    {count++}
}
count
var count1=0

for name in names{
    if name.hasSuffix("d")
    {count1++}
}

count1




import Foundation

var str="Hello,world."

str=str.capitalizedString
str
str=str.uppercaseString
str
str=str.lowercaseString

str


//trim
var str2="      !!!2!!!!       "
str2.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())

str2.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " !"))


//split
var str3="Welcome to my world"
str3.componentsSeparatedByString(" ")

str3.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: "oc"))
str3.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: "co"))

//join
var str4="-"
str4.join(["1","2","3"])



//range
var str="Hello World! Hello Swift! Hello Xcode"
str.rangeOfString("Hello")
str.rangeOfString("Hello", options: NSStringCompareOptions.BackwardsSearch)


str.startIndex
str.endIndex

let strRange = Range<String.Index>(start: str.startIndex, end: str.endIndex)

var startIndex:String.Index = str.startIndex
let endIndex:String.Index = advance(str.startIndex,10)

let searchRange = Range<String.Index>(start:startIndex,end:endIndex)
str.rangeOfString("Hello", options: NSStringCompareOptions.CaseInsensitiveSearch, range: searchRange)



let text = "abc"
let index2 = advance(text.startIndex, 2) //will call succ 2 times (facepalm)
let lastChar: Character = text[index2] //now we can index!


//
//let range = text.rangeOfString("b")
//var index: Int = distance(text.startIndex, range?.startIndex!)

//substring
var toIndex = advance(str.startIndex, 4)
str.substringToIndex(toIndex)

var fromIndex = advance(str.startIndex, 14)
str.substringFromIndex(fromIndex)

str.substringWithRange(Range<String.Index>(start:toIndex,end:fromIndex))

//insert
var insertIndex = advance(str.startIndex, 22)
str.insert("!", atIndex: insertIndex)

//remove
str.removeAtIndex(insertIndex)
str

str.removeRange(Range<String.Index>(start:str.startIndex,end:insertIndex))

//replace
var replaceEndIndex = advance(str.startIndex, 12)
str.stringByReplacingCharactersInRange(Range<String.Index>(start:startIndex,end:replaceEndIndex), withString: "HELLO WORLD!")





var array = ["A","B"]
var array2:[String] = ["A","B"]
var array3:Array<String> = ["A","B"]

array[0]="AAA"

array

//创建空的数组
var array4 = [Int]()

var array5 = Array<String>()

var array6:Array<Int> = []
array6.append(2)

array = []

array.append("A")
array

array6 = [Int](count: 10, repeatedValue: 9)
var array7 = [2,3,4]

var array8 = array6 + array7

array8.count
array8.isEmpty

array.append("G")
array += ["H"]

array.insert("I", atIndex: 2)
array.removeAtIndex(0)
array
array.removeLast()
array

let range = Range(start: 0, end: 1)
array.removeRange(range)


array = ["a","b","c","d","e","e","f"]

array[1]

//遍历数组
for index in 0..<array.count
{
    println(array[index])
}

for index in array
{
    println(index)
}

for (index,item) in enumerate(array)
{
    println("\(index) - \(item)")
}



var courses = [1:"语文",2:"数学",3:"英语"]
var websites = ["google":"谷歌","baidu":"百度","yahoo":"雅虎"]

var course2:Dictionary<Int,String> = [1:"语文",2:"数学",3:"英语"]


var websites2:Dictionary<String,String> = ["google":"谷歌","baidu":"百度","yahoo":"雅虎"]






var courses = [1:"语文",2:"数学",4:"英语"]

courses[3] = "计算机"


courses.removeValueForKey(1)
courses
*/


for var i = -6.28 ; i <= 6.28 ; i += 0.1
{
    sin(i)
}





































