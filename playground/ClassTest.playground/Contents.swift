//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class ClassTest{
    //Shape
    class Shape{
        var name: String
        var point:Int
        
        var level: Int {
            get {
                return max(1, point/10)
            }
            set {
                point = level * 10
            }
        }
        
        init(name:String,point:Int) {
            self.name = name
            self.point = point
        }
        
        deinit {
          print("will deinit!",self.name)
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
            super.init(name: name,point:100)
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
            super.init(name: name,point:200)
        }
        
        func area() -> Double {
            return bottom * height / 2
        }
    }
}

var square = ClassTest.Rectangle(height: 100, width: 100, name: "I am a square!")
var triangle = ClassTest.Triangle(height: 100, bottom: 100, name: "I am a triangle!")
print("height: " , square.height, " Width: ", square.width, " Area:", square.area(),"Level:",square.level,"point:",square.point)
print(triangle.area())
print("THe triangle's area is half of The Square")

//compare with object ===
if ( square === triangle) {
    print(" Square is the same as Triangle!")
}else{
    print(" Square is different from Triangle!")
}

//byRef,original value will be changed!
var newSquare = square
newSquare.width=10000
print("square:",square.area())
print("newSquare:",newSquare.area())



