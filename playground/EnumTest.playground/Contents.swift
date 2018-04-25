//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, this is a enum test"

//Singal's raw type : Int
enum Signal: Int {
    case RED = 1
    case BLUE
    case YELLOW
    
    func meaning() -> String {
        switch self {
        case .RED:
            return "STOP!"
        case .BLUE:
            return "GO!"
        case .YELLOW:
            return "WAIT!"
        }
    }
}
var s: Signal = Signal.YELLOW
//rawValue hashValue
print(s,s.rawValue,s.hashValue,s.meaning())

var create = Signal(rawValue: 1)
print(create,create?.rawValue,create?.hashValue,create?.meaning())

enum Vehicle {
    case Bicycle
    case Motobike(Int)
    case Car(Int,Bool)
    
    func whatIsThis() {
        switch self {
        case .Bicycle:
             print("a bicycle")
        case .Motobike(let engine) where engine <= 50:
             print("a 50cc motobike")
        case .Motobike(let engine) where engine <= 125:
            print("a 125cc motobike")
        case .Motobike(let engine) where engine <= 400:
            print("a 400cc motobike")
        case .Motobike(let engine) :
            print("a big motobike")
        case .Car(let engine, let auto) where engine <= 660 :
            print("a light car", (auto ? "auto" : "manual"))
        case .Car(let engine, let auto) :
            print("a car", (auto ? "auto" : "manual"))
        }
    }
}
var vehicle = Vehicle.Bicycle
vehicle.whatIsThis()
Vehicle.Car(100,true)
Vehicle.Motobike(200)


//enum implement protocol
public protocol SayHello {
    var hello: String { get }
}

enum CanSayHello: SayHello {
    case Dog
    case Cat
    
    var hello: String{
        switch self {
        case .Dog:
            return "WAON"
        case .Cat:
            return "Miao.."
        }
    }
}
print(CanSayHello.Cat.hello)
