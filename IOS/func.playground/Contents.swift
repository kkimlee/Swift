import UIKit

func sayHello() {
    print("Hello func!")
}
sayHello()

func multipl() {
    for i in 2...9 {
        for j in 2...9 {
            print("\(i) x \(j) = \(i*j)")
        }
    }
}
multipl()

func sayHello1(name : String) {
    print("Hello \(name)")
}

sayHello1(name: "덕선")

func multipl1(dan:Int) {
    for i in 2...9 {
        print("\(dan) x \(i) = \(dan * i)")
    }
}

multipl1(dan:5)


func sayHello2() -> String {
    return "Hello Func"
}
var returnValue = sayHello2()
print(returnValue)
print(sayHello2())

func threeTimes() -> Int {
    return 3
}
var result = threeTimes()
print(result)

func sayHello3(name : String) -> String {
    return "Hello \(name)"
}

var returnValue1 = sayHello3(name: "덕선")
print(returnValue1)
print(sayHello3(name: "덕선"))

func threeTimes(val : Int) -> Int {
    return val*3
}
var resultA = threeTimes(val:3)
print(resultA)


func sayHelloWithName(name:String, age:Int) ->String{
    return "\(name) is \(age) years old"
}
print(sayHelloWithName(name:"Choi", age:20))

func sayHello(exName name :String, exAge age:Int)->String{
    return "\(name) is \(age) years old"
}
print(sayHello(exName: "Choi", exAge:13))

func sayHello(_ name : String, _ age:Int) -> String {
    return "\(name) is \(age) years old"
}
print(sayHello("Choi", 13))

func sayHello(name: String = "덕선"){
    print("Hello \(name)!")
}
sayHello(name: "택")
sayHello()

//계산기
func Calculate(num1:Int, str:String, num2:Int) -> Int {
    switch (str) {
    case "+": return num1 + num2
    case "-": return num1 - num2
    case "*": return num1 * num2
    case "/": return num1 / num2
    default: return -1;
    }
}

Calculate (num1:10, str:"+", num2:10)



