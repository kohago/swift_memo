//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, this is a test for property "

class Hoge{
    static var gendle = "male"
    
    var name: String = "" {
        willSet {
            print("will set name from \(self.name) to \(newValue)")
        }
        didSet {
            print("name settd from \(oldValue) to \(self.name)")
        }
    }
    init() {
       name = "I am hoge!"
    }
}

//test lazy
class Fuga{
    //can't set lazy to const(let)
    lazy var hoge = Hoge()
}
//create Hoget until using it
var fuga = Fuga()
print(fuga.hoge)
print(fuga.hoge.name)

//test watch
//can do that by protocol
fuga.hoge.name = "changedName"


//test static
print("a static value:",Hoge.gendle)
