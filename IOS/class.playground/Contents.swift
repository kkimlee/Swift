import UIKit
import Foundation

//class
/*class SimpleClass {
    var name = "SimpleClass"
    var count = 0
}

var simpleClass = SimpleClass()
simpleClass.count = 1
var count = simpleClass.count
var simpleClass1 = SimpleClass()
simpleClass1.count = 2
print(simpleClass.count)
print(simpleClass1.count)
*/
/*class Vehicle {
    var speed = 0
    func speedUp() {
        speed += 10
    }
    func speedDown() {
        speed -= 10
    }
}

var someVehicle = Vehicle()
someVehicle.speedUp()
print(someVehicle.speed)
*/

/*class Vehicle1 {
    var speed = 0
    func speedUp() { speed += 10 }
    func speedDown() { speed -= 10 }
    func speed2Mile() -> Double {
        return Double(speed) * 0.6213
    }
}
var someVehicle1 = Vehicle1();
someVehicle1.speedUp()
print(someVehicle1.speed)
var mile = someVehicle1.speed2Mile()
print(mile)
*/

/*class Vehicle2 {
    var speed = 0

    var mile: Double {
        return Double(speed) * 0.6213
    }

    func speedUp() { speed += 10 }
    func speedDown() { speed -= 10 }
    func speed2Mile() -> Double {
        return Double(speed) * 0.6213
    }
}
var someVehicle2 = Vehicle2()
someVehicle2.speedUp()
print(someVehicle2.speed2Mile())
print(someVehicle2.mile)
*/

class Vehicle3 {
    var speed = 0.0
    var mile: Double {
        get { return Double(speed) * 0.6213 }
        set(newValue) { speed = newValue * 1.6 }
    }
    func speedUp() { speed += 10 }
    func speedDown() { speed -= 10 }
    func speed2Mile() -> Double {
        return Double(speed) * 0.6213
    }
}
var someVehicle3 = Vehicle3();
someVehicle3.mile = 94
print(someVehicle3.speed)


/*class Square {
    var width : Double
    var height : Double
    var area : Double {
        get { return width*height }
        set(newValue) {
            width = sqrt(newValue)
            height = sqrt(newValue)
            
        }
    }
    
    func multiplyTwo() -> (Double, Double) {
        return (width*2, height*2)
    }
    
    init (width:Double, height:Double) {
        self.width = width
        self.height = height
    }
}

var someSquare = Square(width: 5, height: 5)
someSquare.area = 100
print("(\(someSquare.width), \(someSquare.height))")
print(someSquare.multiplyTwo())
*/

/*class Square1 {
    var width:Double
    var height:Double
    var area:Double {
        get { return width * height }
        set(newValue) {
            width = sqrt(newValue)
            height = width
        }
    }
    func duplicate() -> (Double, Double) {
        width = width*2
        height = height*2
        return (width, height)
    }
    init(w: Double, h: Double) {
        width = w
        height = h
    }
}

var square1 = Square1(w:10, h:10)
print(square1.area)
square1.area = 25
print("width = \(square1.width) height = \(square1.height)")
square1.duplicate()
print(square1.area)*/


/*class Square2 {
    var width = 0.0
    var height = 0.0
    var area:Double {
        get { return width * height }
        set(newValue) {
            width = sqrt(newValue)
            height = width
        }
    }
    func duplicate() -> (Double, Double) {
        width = width * 2
        height = height * 2
        return (width, height)
    }
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
        self.duplicate()
    }
}*/

class Car : Vehicle3 {
    var wheelCount:Int
    var seatCount:Int
    init(wheelCount:Int, seatCount:Int) {
        self.wheelCount = wheelCount
        self.seatCount = seatCount
    }
}
var car = Car(wheelCount: 4, seatCount: 2)
car.speedUp()
print(car.speed)

class Truck : Car {
    var loadage:Int
    
    func load() {
        print("load")
    }
    func unLoad() {
        print("unLoad")
    }
    init(loadage:Int, wheelCount: Int, seatCount: Int) {
        self.loadage = loadage
        super.init(wheelCount: wheelCount, seatCount: seatCount)
    }
}


/*class Truck1 : Car {
    var loadage: Int = 0
    func load() { print("load") }
    func unLoad() { print("unLoad") }
    override func speedUp() {
        speed += 5
    }
}

class SportsCar : Car {
    override func speedUp() {
        speed += 20
    }
}

var car = Car(wheelCount: 4, seatCount: 4)
car.speedUp()
var truck1 = Truck1(wheelCount:6, seatCount: 2)
truck1.speedUp()
print(truck1.speed)
var sportsCar = SportsCar(wheelCount: 4, seatCount: 2)
sportsCar.speedUp()
print(sportsCar.speed)


class Truck2 : Car {
    var loadage:Int
    func load() { print("load") }
    func unLoad() { print("unLoad") }
    init(loadage:Int, wheelCount:Int, seatCount:Int) {
        self.loadage = loadage
        super.init(wheelCount: wheelCount, seatCount: seatCount)
    }
    override func speedUp() {
        speed += 5
    }
}
var truck2 = Truck2(loadage:1000, wheelCount:6, seatCount:2)
truck2.speedUp()
*/

