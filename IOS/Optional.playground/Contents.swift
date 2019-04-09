import UIKit
// 변수 초기화
//var index:Int
/*var index1:Int = Int()
var index2:Int = Int(3)
var index3 = 3
// swift는 안정성을 중요시하기 때문에 변수나 객체가 nil값이 될 수 없다.
//var index4:Int = nil
var index5 = Int("3")
var index6 = Int("swift")
*/
// optional형 선언
/*var optInt : Int?
optInt = nil
print(optInt)

var optInt1 : Int? = 1
print(optInt1)

var optStr : String? = "swift"
print(optStr)

var optArr : [String]?
optArr = ["C", "JAVA", "오브젝티브-C", "SmallTalk"]
print(optArr)

var optDic : [String:Int]?
optDic = ["국어":94, "수학":88, "영어":96]
print(optDic)
*/
// optional형 사용
/*var temp1:Int? = 3
var temp2:Int? = 5
// optional형은 연산이 불가 사용하려면 언래핑 후 사용 가능.
/*
 temp1 + temp2
temp1 + 30
*/

var optInt2 : Int? = 3
print("옵셔널 자체의 값 : \(optInt2)")
print("!로 강제 언래핑한 값 : \(optInt2!)")
temp1! + temp2!
var index7 = Int("123")!
print(index7)
*/
// optional형 force Unwrapping
/*var optStr1 : String? = "swift"
print(optStr1)
print(optStr1!)

var capital5 = ["KR":"Seoul", "EN":"London", "FR":"Paris"]

print(capital5["KR"])
print(capital5["kr"])
var krCapital = capital5["KR"]!
//var krCaptial1 = capital5["kr"]!
 */
// optional형 unwrapping
/*var temp2 : Int? = 123

if temp2 != nil {
    print("변환된 값은 \(temp2!)입니다.")
} else {
    print("값 변환에 실패하였습니다.")
}

if let value = temp2 {
    print("변환된 값은 \(value)입니다")
}*/

// optional형 자동 해제
let optInt3:Int? = 123
if(optInt3 != nil) {
    if(optInt3 == 123) {
        print("optInt3 == 123")
    } else {
        print("optInt3 != 123")
    }
}
let tempInt:Int? = 123
tempInt! == 123
tempInt == 123
tempInt! == Optional(123)
tempInt == Optional(123)
