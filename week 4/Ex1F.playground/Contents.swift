import UIKit

/*var num = 4

for i in 1...num {
    for j in 1...i {
        print("*", terminator: "")
    }
    print("")
}

var num1 = num-1

for y in 1...num1 {
    for x in 1...num1 {
        print("*", terminator: "")
    }
    print("")
    num1-=1
}*/

func halfDiamondPattern(maxstar:Int){
    for i in 1...maxstar {
        for j in 1...i {
            print("*", terminator: "")
        }
        print("")
    }

    var num1 = maxstar-1

    for y in 1...num1 {
        for x in 1...num1 {
            print("*", terminator: "")
        }
        print("")
        num1-=1
    }
}
halfDiamondPattern(maxstar: 4)
    

