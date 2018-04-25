//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, This is the test for Strut"

//cann't use : (inherit)
//has no deinti signature
//class is ByRefer,strut is ByValue

struct Author {
    var name: String
    var age: Int
    
    func descript() {
        print("name:",name,"age:",age)
    }
}
let author = Author(name: "me",age: 10)
author.descript()

//test struct having default value
//can create a new strut without any parameters
struct YoungAuthor {
    var name: String = "Young man"
    var age: Int = 10
    
    func descript() {
        print("name:",name,"age:",age)
    }
}
let author1 = YoungAuthor()
author1.descript()


//struct in struct
struct Book {
    var title:String
    var author:Author
    
    func descript(){
        print("title:",title,"author:",author.descript())
    }
}

let book1 = Book( title: "1984", author: Author(name: "a better man", age:33))
book1.descript()
//can't change property of a const struct. Can do tha
//book1.title = "new title"
//swift define String,Array,Dictionary with Struct,so they ar byValue
