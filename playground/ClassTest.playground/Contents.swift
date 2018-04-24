//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class ClassTest{
    //Shape
    class Shape{
        var name: String
        
        init(name:String) {
            self.name = name
        }
    }
    
    //Rectangle
    //A: B Inherit
    class Rectangle: Shape{
        var height: Double
        var width: Double
        
        init(height: Double, width: Double, name: String) {
            self.height = height
            self.width = width
            super.init(name: name)
        }
        
        func area() -> Double {
            return width * height
        }
    }
    
    //Triangle
    class Triangle: Shape{
        var height: Double
        var bottom: Double
        
        init(height: Double, bottom: Double, name: String) {
            self.height = height
            self.bottom = bottom
            super.init(name: name)
        }
        
        func area() -> Double {
            return bottom * height / 2
        }
    }
}

var square = ClassTest.Rectangle(height: 100, width: 100, name: "I am a square!")
var triangle = ClassTest.Triangle(height: 100, bottom: 100, name: "I am a triangle!")
print("height: " , square.height, " Width: ", square.width, " Area:", square.area())
print(triangle.area())
print("THe triangle's area is half of The Square")

//compare with object ===
if ( square === triangle) {
    print(" Square is the same as Triangle!")
}else{
    print(" Square is different from Triangle!")
}



