import UIKit

struct Person {
    var name: String
    var age : Int
    var gender: String
    var height: Double
    func info() {
        print("이름:\(name), 나이:\(age), 성별:\(gender), 키:\(height)")
    }
}

var person = Person(name: "홍길동", age: 15, gender: "남", height: 171.7)

print(person.name)
print(person.gender)
print(person.height)
person.info()

var person1 = person
person1.name = "변학도"
person.info()
person1.info()
