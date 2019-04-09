import UIKit

/*enum Direction {
    case north
    case south
    case east, west
}

var directionToHead = Direction.north
print(directionToHead)

directionToHead = .east
print(directionToHead)

var directionToHead1 = Direction.east


switch directionToHead {
case .north : print("북쪽입니다.")
case .south : print("남쪽입니다.")
case .east : print("동쪽입니다.")
case .west : print("서쪽입니다.")
}
*/
enum HTTPCode : Int {
    case OK = 20
    case NOT_MODIFY = 304
    case INCORRECT_PAGE = 404
    case SERVER_ERROR = 500
}

print(HTTPCode.OK)
print(HTTPCode.OK.rawValue)

enum Rank : Int {
    case one = 1
    case two, three, four, five
}
print(Rank.four.rawValue)


enum Direction1:Int {
    case north = 1
    case south
    case east, west
    var value : String {
        return "방향 코드는 \(self.rawValue)"
    }
    func getDesciption() -> String {
        switch self {
        case .north: return "북쪽이고 코드는 \(self.rawValue)"
        case .south: return "남쪽이고 코드는 \(self.rawValue)"
        case .east: return "동쪽이고 코드는 \(self.rawValue)"
        case .west: return "서쪽이고 코드는 \(self.rawValue)"
        }
    }
}

var response = HTTPCode.OK
response = .NOT_MODIFY
/*response.value
response.getDescription()
HTTPCode.getName()*/

