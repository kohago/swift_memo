//array
var testArray = ["one", "two", "three"]
print(testArray)
var testArrayInt: [Int] = [1, 2, 3]

//ctr+. code completion
print(testArrayInt)

//array count repeat
var repeatValues = Array(repeating: "ling..", count: 10)
print(repeatValues)

//different type in array
var differentTypesArray: Array<Any> = ["1",1,true,200.0]
print(differentTypesArray)

// Array with funcs
var operations: [(Double,Double) -> Double] = [{(a:Double,b:Double) -> Double in return a + b },{(a:Double,b:Double) -> Double in return a - b },{(a:Double,b:Double) -> Double in return a * b },{(a:Double,b:Double) -> Double in return a / b }]
for opreation in operations {
    print( opreation(10,20))
}

//Array.isEmpty
var emptyArray:[Int] = []
if( emptyArray.isEmpty){
    print("I am empty!")
}

//Array is by value,copy value to another array
var originArray = [1,2,3,4,5]
var copied = originArray
copied[0] = 10
print("origin: ",originArray)
print("copied:", copied)
