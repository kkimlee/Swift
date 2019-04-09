import UIKit


// Array
var kids = ["덕선", "선우", "택", "정환", "동룡"]
let imkids = ["덕선", "선우", "택", "정환", "동룡"]
var kids1:Array<String> = ["덕선", "선우", "택", "정환", "동룡"]
var kids2:[String] = ["덕선", "선우", "택", "정환", "동룡"]
var kids5 = Array<String>()
kids5.append("덕선")
kids5.append("선우")
var kids6:[String] = [String]()
var kids7 = [String]()
var kids8:[String] = []
var kids9 = Array(repeatElement(0, count: 3))
var kids10 = [String](repeatElement("없음", count: 3))

let kid = kids[0]
print("첫번째 아이는 \(kid)입니다")
kids[1] = "진주"

for kid in kids {
    print(kid)
}

let length = kids.count
print(length)

for index in 0...length-1 {
    print("\(index+1)번째 아이는 \(kids[index])입니다")
}

kids.append("정봉") //추가
print(kids)
kids.insert("진주", at: 1) //삽입
print(kids)
kids.remove(at: 1) //삭제
kids.append(contentsOf: ["보라", "노을"])
print(kids)
kids += ["장만옥", "왕조현"]
print(kids)
let part = kids[0...2]
print(part)
kids[0...2] = ["성동일", "김성균"]
print(kids)

