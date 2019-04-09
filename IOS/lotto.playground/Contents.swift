import UIKit

func lotto(){
    var number : Set<Int> = []
    while(number.count < 6) {
        number.insert(Int(arc4random() % 45) + 1)
    }
    
    for index in number {
        print(index, terminator: " ")
    }
}

lotto()
