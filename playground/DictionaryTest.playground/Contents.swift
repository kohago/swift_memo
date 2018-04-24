//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, This is a test for Dictionary"

//dictionary
var testDic = [ 1 : "one",2 : "two",3: "three"]
print(testDic)

//count
print("count:",testDic.count," capacity:",testDic.capacity)

//key:value
for key in testDic.keys {
    print("key:",key)
}

for value in testDic.values {
    print("value:",value)
}

for pair in testDic {
    print("key:",pair.key," ;value:",pair.value)
}

//copid by value
var testDic2 = testDic
testDic2[4] = "four"
print(testDic)
print(testDic2)

//testMerging(join)
print(testDic.merging(testDic2, uniquingKeysWith: +))
