import UIKit

extension Double {
    var km : Double { return self * 1000.0 }
    var m : Double { return self }
    var cm : Double { return self / 100.0 }
    var mm : Double { return self / 1000.0}
    var description : String {
        return "\(self)km는 \(self.km)m,\(self)cm는 \(self.cm)m,\(self.mm)m입니다."
    }
}

2.km
5.5.cm
7.0.description
let distance = 42.0.km + 195.m
print("마라톤의 총 거리는 \(distance)m입니다.")
// 구조체의 매서드가 구조체 내부에서 데이터 수정 할떄는 Mutating키워드를 선언 해주어야함
extension Int {
    mutating func square() {
        self = self * self
    }
}

var value = 3
value.square()
print(value)
