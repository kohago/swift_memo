//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, I will test Optional"

//can put nil to optional
var optionalInt: Int? = 5
optionalInt = nil
// ? or Optional<>,<> is generic Array<> can do the same things
var optionalStr: Optional<String> = nil
optionalStr = nil

//cann't put nil to usual var
//Nil cannot be assigned to type 'int'
var usualInt: Int = 5
//sualInt = nil

//need to unwrap optional when you want to use the value
// optionalStr.uppercased()  will be error:
// Value of optional type 'Optional<String> not unwrapped ; did tyou mean to use '!' or '?'?
//print(optionalStr.uppercased())
print(optionalStr?.uppercased())

var optionalStr1:String?="Hello"
print(optionalStr1?.lowercased())

//binding unwrapp
func bindingUnwrapp(testStr: Optional<String>) -> String{
    if let unwrappedStr = testStr {
        return (unwrappedStr.uppercased())
    }
    return ""
}
print(bindingUnwrapp(testStr: optionalStr))
print(bindingUnwrapp(testStr: "Hello"))

//guard, execute else firstly!
func guardBingdingUnwrapp(testStr:String?) -> String {
    guard let unWrappedStr = testStr else {
        return ""
    }
    return unWrappedStr.uppercased()
}
print(guardBingdingUnwrapp(testStr: optionalStr))
print(guardBingdingUnwrapp(testStr: "guard hello"))


//test ??
var a: Int?
let b = a ?? 1
print(b)
var c: String? = "It is raining today!"
let d = c ?? "It is sunny today!"
print(d)

