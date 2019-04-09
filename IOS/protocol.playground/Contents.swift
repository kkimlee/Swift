import UIKit
// protocol (abstract class) 추상 클래스
protocol SamplePropProtocol {
    var name : String { get set }
    var description : String { get }
}

struct PropertyProtocolImpl : SamplePropProtocol {
    var name = "홍길동"
    var description: String {
        return "Name : \(self.name)"
    }
}

protocol SampleMethodProtocol {
    func execute(cmd : String)
    func showPort(port : Int) -> String
}

struct Process : SampleMethodProtocol {
    func execute(cmd : String) {
        if (cmd == "start") {
            print("실행합니다.")
        }
    }
    func showPort(port : Int) -> String {
        return ("Port : \(port)")
    }
}
