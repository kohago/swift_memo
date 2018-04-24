import UIKit

var str = "Hello, playground"

//test func
func greet( expression: String, name:String){
    print(expression + " " + name)
}
greet(expression: "welcome !", name: " new man for swift!")

//test closure
//defind a clouser and return it
func incrementer() -> ( () -> Int ) {
    var count = 0
    func increment() -> Int {
        count += 1
        return count
    }
    return increment
}

var counter = incrementer()
print(counter())
print(counter())
print(counter())

//test clouser without name
print("test clouser without name")
func incremeter2() -> ( () -> Int ) {
    var count = 0
    return { () -> Int in
        count += 1
        return count
    }
}
var counter2 = incremeter2()
print(counter2())
print(counter2())
print(counter2())

//test func parameters
func newNumbers(oldNumbers: [Int], operation: (Int) -> Int) -> [Int] {
    var newResult: [Int] = []
    for oldNumber in oldNumbers {
        newResult.append(operation(oldNumber))
    }
    return newResult
}

let oldNumbers = [1,2,3,4,5,6]
print(newNumbers(oldNumbers: oldNumbers, operation: { (number: Int) -> Int in number * 2 }))


//.map will not change the origin value
var someNumbers = [1,2,3,4,5,6,7,8,9]
print("be double!: ", someNumbers.map({ (number: Int) -> Int in return number * 2}))
print("only even!:", someNumbers.filter({ (number: Int) -> Bool in return number%2 == 0 }))
print("total",someNumbers.reduce(0, { (total: Int,number: Int) -> Int in return total + number } ))
print(someNumbers)
