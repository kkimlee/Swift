import UIKit

class Vehicle {
    var wheels:Int
    var seats:Int
    var engine:Int
    init(wheels:Int, seats:Int, engine:Int) {
            self.wheels = wheels
            self.seats = seats
            self.engine = engine
    }
    func drive(){
        print("Run")
    }
}

/*var bike = Vehicle(wheels: 2, seats: 1, engine: 2)
print("bike.wheels = \(bike.wheels)")
print("bike.seats = \(bike.seats)")
print("bike.engine = \(bike.engine)")

var car = Vehicle(wheels: 4, seats: 4, engine: 4)
print("car.wheels = \(car.wheels)")
print("car.seats = \(car.seats)")
print("car.engine = \(car.engine)")

var copyBike = bike
copyBike.wheels = 3
print("bike.wheels = \(bike.wheels)")
print("copyBIke.wheels = \(copyBike.wheels)")
*/
class Car:Vehicle {
    init() {
        super.init(wheels: 4, seats: 5, engine: 4)
    }
    func shiftGear() {
        print("변속")
    }
}

/*let car1 = Car()
car1.wheels = 6
print("car1.wheels = \(car1.wheels)")
print("car1.seats = \(car1.seats)")
car1.drive()
*/

class Sedan: Car {
    func loadPassenger() {
        print("Load Passenger")
    }
    override func shiftGear() {
        print("자동변속")
    }
}

class Truck: Car {
    func loadCargo() {
        print("Load Cargo")
    }
    override func shiftGear() {
        print("수동변속")
    }
}

let sedan = Sedan()
sedan.loadPassenger()
sedan.shiftGear()
sedan.drive()

let truck = Truck()
truck.loadCargo()
truck.shiftGear()
