import UIKit

var num1 = 5
var num2 = 3
var num3 = 6
var num4 = 10
var num5 = 10

// 연산
-num1
num1 + num2
num1 - num2
num1 * num2
num1 / num2
num1 % num2

// 비교
num1 > num2
num1 != num2
num1 < num2
num4 >= num5

// 논리
num1 > num2 && num3 < num4
num1 > num2 || num3 > num4
num1 == 5
!(num1 > num2)

// 대입연산자
num1 += 1 // num1 = num1 + 1
num1 -= 1 // num1 = num1 - 1
num1 /= 1
num1 *= 1
num1 %= 1

// 범위연산자
1...5

// 자료형 다르면 연산 불가
/*
var pi = 3.14
var num3 = 1

pi + num3
*/

/*var str1 = "A"
var str2 = "B"

// 문자열끼리 + 연산시 문자열 합치기 가능
str1 + str2

// 비교시 아스키코드 정수형으로 변환되어 비교
str1 < str2

num1 > num2 ? 10:20

// if 문
var name = "김민태"
var age = 23
var adult = 19

print("나의 이름은 \(name) 이고 나의 나이는 \(age) 입니다.")

if (age > adult) {
    print("성인입니다")
}
else {
    print("성인이 아닙니다")
}

// 다중 if문

var browser = "Safari"
var browserName = ""

if (browser == "IE") {
    browserName = "인터넷 익스플로러"
} else if ( browser == "FF") {
    browserName = "파이어 폭스"
} else if ( browser == "Chrome") {
    browserName = "크롬"
}

print(browserName)

// switch문
browser = "Chrome"

switch browser {
case "IE": browserName = "인터넷 익스플로러"
case "FF": browserName = "파이어 폭스"
case "Chrome": browserName = "크롬"
default : browserName = "알려지지않은 브라우저"
}

print(browserName)

var value = 3
switch value {
case 0: print("0 입니다")
case 1: print("1 입니다")
case 2,3: print("2 또는 3 입니다.")
default: print("default입니다")
}

age = 17
switch age {
case 1...3: print("Baby")
case 4..<20: print("Child")
default: print("Adult")
}

// 반복문 for
// print에서 terminator가 default상태일시 \n을 자동으로 해줌! 줄바꿈을 자동으로 하지 않으려면 print(" ", terminator:" ")
for row in 1...5 {
    print("2 x \(row) = \(row*2)")
}
// 줄의 마지막에 넣는 것이라고 생각하면 될듯.
for test in 1...5 {
    print(test, terminator:" ")
}

print()
*/

for number1 in 2...9 {
    for number2 in 1...9 {
        print("\(number1) x \(number2) = \(number1*number2)")
    }
    print()
}

// Array반복
/*var names = ["덕선", "선우", "택", "정환", "동룡"]

for name in names {
    print("hello, \(name)")
}

var capitals = ["KR":"Seoul", "EN":"London", "FR":"Paris"]

for (country, capital) in capitals {
    print("\(country)의 수도는 \(capital)입니다.")
}

// while문
age = 0

while (age < 5) {
    print("\(age)살입니다.")
    age += 1
}

age = 0
var num = 0

while (age < 5) {
    while (num < 5) {
        print("\(age)살입니다.")
        num += 1
    }
    num = 0
    age += 1
}

// repeat-while (do-while)
var n = 100

repeat {
    n = n * 2
    print("\(n)")
} while (n < 1000)

for row in 0...5 {
    if row == 2 {
        break
    }
    print("\(row) was exvuted!")
}
*/
