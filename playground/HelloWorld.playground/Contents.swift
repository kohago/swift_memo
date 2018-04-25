import UIKit
import PlaygroundSupport

//variable
var str: String = "Hello"
var str1 = " world"
print(str + str1)

//const
//cann't assing value to a let constant
let year = 2018
//must change type expressly
print( "This year is " + String(year))

//testIfElse,for
var numbers = [ 1,2,3,4,5,6,7,8,9]
for number in numbers {
    if number % 2 == 0 {
        print(String(number) + " is even ")
    }else{
        print(String(number) + " is odd ")
    }
}

//test switch,range
let age = 21
switch age {
case 0...6:
     print(String(age) + " is a baby!")
case 7...12:
     print(String(age) + " is a child!")
case 13...18:
    print(String(age) + " is a boy or girl!")
default:
    print(String(age) + " is a adult!")
}

//typealias
typealias BodyStatus = (String,Double)
var height: BodyStatus = ("身長：",123.4)
var weight: BodyStatus = ("体重：",24.5)
print(height)
print(weight)


/*
 this is a comment
 this is another comment
 /*
   this is a inner comment
 */
 */


// if you don't use the varialbe,set it to _
var count = 1
for _ in 0...5 {
    print("HI",count)
}
 

