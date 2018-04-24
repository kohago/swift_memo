//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, I will test Optional"

//can put nil to optional
var optionalInt: Int? = 5
optionalInt = nil
// ? or Optional<>,<> is generic Array<> can do the same things
var optionalStr: Optional<String> = "Hello"
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

