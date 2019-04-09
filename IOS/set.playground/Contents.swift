import UIKit

var kids1: Set<String> = Set<String>()
var kids2: Set<String> = []
var kids3: Set<String> = ["덕선", "선우", "택", "정환", "동룡"]
//Set에서는 형지정을 생략하면 Array로 인식된다.
print(kids3)
var nums = [1,2,3]
print(nums)

for name in kids3 {
    print(name)
}

let result = kids3.insert("덕선")
print(result)
let result1 = kids3.insert("덕선1")
print(result1)
let result2 = kids3.remove("덕선1")
print(result2)
let result3 = kids3.remove("덕선1")
print(result3)

let students : Set<String>
    = ["덕선", "선우", "정환", "동룡", "가을", "왕조현", "장만옥"]
let family :Set<String> = ["보라", "덕선", "가을"]
//합집합
let unionSet = students.union(family)
print(unionSet)
//교집합
let intersectionSet = students.intersection(family)
print(intersectionSet)
//여집합
let symmetricDifferenceSet = students.symmetricDifference(family)
print(symmetricDifferenceSet)
//차집합
let substractSet = students.subtracting(family)
print(substractSet)

print(students.sorted())


let Aschool: Set<String> = ["덕선", "왕조현", "장만옥"]
let Bschool: Set<String> = ["선우", "정환", "동룡", "가을"]

Aschool.isSubset(of: students) //부분집합
Bschool.isSubset(of: students) //부분집합
Aschool.isDisjoint(with: Bschool) //배타적관계
students.isSuperset(of: Bschool) //초집합(상위관계)

let tupleValue = ("a", "b", 1, 2.5, true)
tupleValue.0
tupleValue.1
tupleValue.2
tupleValue.3
tupleValue.4

let(a, b, c, d, e) = tupleValue
print(a)
print(b)
print(c)
print(d)
print(e)

let tp101 : (Int, Int) = (100, 100)
let tp102 : (Int, String, Int) = (100, "a", 200)
let tp103 : (Int, (String, String)) = (100, ("t", "v"))
let tp104 : (String) = ("sample string")
